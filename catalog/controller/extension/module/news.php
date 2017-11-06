<?php
class ControllerExtensionModuleNews extends Controller {
	public function index() {
		$this->load->language('extension/module/news');
        $data['heading_title'] = $this->language->get('heading_title');

        $this->load->model('blog/article');

        $filter = array(
            'limit' => 3,
            'start' => 0,
            'sort'  => 'a.date_added',
            'order' => 'DESC'
        );
        $news = $this->model_blog_article->getArticlesByList($filter, 50);

        $send_news = array();
        $this->load->model('tool/image');
        foreach($news as $news_item) {
            if ($news_item['image']) {
                $image = $this->model_tool_image->resize($news_item['image'], 50, 50);
            } else {
                $image = $this->model_tool_image->resize('placeholder.png', 50, 50);
            }
            $send_news[] = array(
                'name'        => $news_item['name'],
                'date_added'  => explode(' ',$news_item['date_added'])[0],
                'image'       => $image,
				'href'        => $this->url->link('blog/article', 'article_id=' . $news_item['article_id'], true)
            );
        }
        $data['news'] = $send_news;


		return $this->load->view('extension/module/news', $data);
	}
}