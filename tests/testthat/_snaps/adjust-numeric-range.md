# adjustment printing

    Code
      tailor() %>% adjust_numeric_range()
    Message
      
      -- tailor ----------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Constrain numeric predictions to be between [-Inf, Inf].

---

    Code
      tailor() %>% adjust_numeric_range(hardhat::tune())
    Message
      
      -- tailor ----------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Constrain numeric predictions to be between [?, Inf].

---

    Code
      tailor() %>% adjust_numeric_range(-1, hardhat::tune())
    Message
      
      -- tailor ----------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Constrain numeric predictions to be between [-1, ?].

---

    Code
      tailor() %>% adjust_numeric_range(hardhat::tune(), 1)
    Message
      
      -- tailor ----------------------------------------------------------------------
      A postprocessor with 1 operation:
      
      * Constrain numeric predictions to be between [?, 1].

