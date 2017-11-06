<?php
class ControllerExtensionModuleStoreReviews extends Controller {
	public function index() {
		$this->load->language('extension/module/store_reviews');
        $data['heading_title'] = $this->language->get('heading_title');

        $this->load->model('catalog/review');
        $reviews = $this->model_catalog_review->getReviewsByProductId(50);

        $send_reviews = array();
        $this->load->model('tool/image');
        foreach($reviews as $review) {
            if ($review['customer_image']) {
                $image = $this->model_tool_image->resize($review['customer_image'], 32, 32);
            } else {
                $image = $this->model_tool_image->resize('placeholder.png', 32, 32);
            }
            $send_reviews[] = array(
                'author' => $review['author'],
                'text' => $review['text'],
                'image' => $image
            );
        }
        $data['reviews'] = $send_reviews;


		return $this->load->view('extension/module/store_reviews', $data);
	}
}