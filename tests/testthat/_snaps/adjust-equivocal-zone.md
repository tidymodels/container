# adjustment printing

    Code
      container() %>% adjust_equivocal_zone()
    Message
      
      -- Container -------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Add equivocal zone of size 0.1.

---

    Code
      container() %>% adjust_equivocal_zone(hardhat::tune())
    Message
      
      -- Container -------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Add equivocal zone of optimized size.
