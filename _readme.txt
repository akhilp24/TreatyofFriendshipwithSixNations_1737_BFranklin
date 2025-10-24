A Treaty of friendship held with the chiefs of the Six Nations, at Philadelphia, in September and October, 1736. Philadelphia: Printed and sold by B. Franklin, at the new printing-office near the market, 1737. 14 pages; 31 cm (folio). English.

University of Pennsylvania, Kislak Center for Special Collections, Rare Books and Manuscripts, Curtis Collection, Folio 112F.

Catalogue entry: https://find.library.upenn.edu/catalog/9929453563503681?hld_id=resource_link_0
Colenda entry: https://colenda.library.upenn.edu/catalog/81431-p32806128

The metadata categories I selected were selected to prioritize the diplomatic and cultural significance of the treaty document while addressing the practical challenges of digitizing historical materials. Instead of focusing solely on the technical aspects, I wanted to include and account for speaker representation through fields like "colonial_officials" and "indigenous_nations_mentioned," since it is a document that records a formal negotiation between sovereign nations. I included "page_type" and "content_description" to handle the friction of digitizing and capturing not just what page number appears but also what type of content each image has and how it functions within the broader treaty structure. I also added fields like "text_legibility" and "notable_physical_features" to document what was lost or gained in the digitization process, while the "historical_significance_notes" column has space for contextual analysis. 



Clean and Extract Text

For my text extraction process, I used Tesseract's command line interface to analyze all of the images, following the sample commands provided by Professor Trettien. 

The OCR results were mixed: on clear pages, the extraction was fairly accurate, but I noticed frequent misrecognition of the letter "s" as "f," reflecting the 18th-century long-s typography. This was a consistent issue throughout, and automatic correction using regex was only partly successful since some words could legitimately contain either letter—context and spelling had to be checked. To improve accuracy, I experimented by running the OCR output through ChatGPT using a prompt specifically noting the historical "s"/"f" confusion; this yielded better contextual corrections by having the model determine which character made sense for each word.

Overall, I needed to do a fair amount of manual correction—reading line by line and comparing to the images, especially for headings, marginalia, or unusually formatted sections. Fortunately, there were no tables or embedded images in the source material, so I did not need to develop a workflow for extracting that type of media. One limitation of plain txt format was the inability to preserve formatting such as italics or bold, which would be possible if converted to markdown or a richer text format, but I opted to keep the transcription strictly in plain text for transparency and ease of downstream processing.

To summarize, the process involved (1) running Tesseract for initial extraction, (2) identifying and planning for known OCR pitfalls (like the long-s vs. f issue), (3) leveraging both automated and AI-assisted correction, and (4) manual review against the original images. I recommend documenting any persistent errors or edge cases for future users, and considering richer text encoding if markup or formatting details are essential for your edition.
