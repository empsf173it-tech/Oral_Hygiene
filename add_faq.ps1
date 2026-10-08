$c = Get-Content 'f:\Smartfusion\October\Oral_Hygiene\contact.html' -Raw
$faq = @"
        <!-- FAQ Section -->
        <section class="py-5 bg-body-tertiary border-top border-bottom" style="border-color: rgba(13, 148, 136, 0.1) !important;">
            <div class="container">
                <div class="text-center mb-5">
                    <h2 class="mb-2 fw-bold">Frequently Asked <span class="text-gradient">Questions</span></h2>
                    <p class="text-muted">Find answers to common questions about our dental services and clinic.</p>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="accordion" id="faqAccordion">
                            <!-- FAQ 1 -->
                            <div class="accordion-item bg-transparent border-secondary mb-3 rounded-3 overflow-hidden">
                                <h2 class="accordion-header" id="faqHeading1">
                                    <button class="accordion-button bg-body-surface text-body fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse1" aria-expanded="true" aria-controls="faqCollapse1">
                                        Do you accept dental insurance?
                                    </button>
                                </h2>
                                <div id="faqCollapse1" class="accordion-collapse collapse show" aria-labelledby="faqHeading1" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted bg-body-surface border-top border-secondary">
                                        Yes, we accept most major dental insurance plans. Our team will gladly assist you in verifying your coverage and filing claims on your behalf to ensure you maximize your benefits.
                                    </div>
                                </div>
                            </div>
                            <!-- FAQ 2 -->
                            <div class="accordion-item bg-transparent border-secondary mb-3 rounded-3 overflow-hidden">
                                <h2 class="accordion-header" id="faqHeading2">
                                    <button class="accordion-button collapsed bg-body-surface text-body fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse2" aria-expanded="false" aria-controls="faqCollapse2">
                                        What should I expect during my first visit?
                                    </button>
                                </h2>
                                <div id="faqCollapse2" class="accordion-collapse collapse" aria-labelledby="faqHeading2" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted bg-body-surface border-top border-secondary">
                                        Your first visit will include a comprehensive oral examination, digital X-rays if necessary, and a professional cleaning. We will also discuss your medical history and any dental concerns you may have.
                                    </div>
                                </div>
                            </div>
                            <!-- FAQ 3 -->
                            <div class="accordion-item bg-transparent border-secondary mb-3 rounded-3 overflow-hidden">
                                <h2 class="accordion-header" id="faqHeading3">
                                    <button class="accordion-button collapsed bg-body-surface text-body fw-bold" type="button" data-bs-toggle="collapse" data-bs-target="#faqCollapse3" aria-expanded="false" aria-controls="faqCollapse3">
                                        How often should I get a dental checkup?
                                    </button>
                                </h2>
                                <div id="faqCollapse3" class="accordion-collapse collapse" aria-labelledby="faqHeading3" data-bs-parent="#faqAccordion">
                                    <div class="accordion-body text-muted bg-body-surface border-top border-secondary">
                                        We recommend visiting us every six months for a routine checkup and professional cleaning. However, if you have specific dental issues, we may suggest more frequent visits tailored to your needs.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Interactive Map Section -->
"@
$c = $c -replace '(?m)^\s*<!-- Interactive Map Section -->', $faq
Set-Content 'f:\Smartfusion\October\Oral_Hygiene\contact.html' -Value $c -NoNewline
