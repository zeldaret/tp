lbl_80CEFE6C:
/* 80CEFE6C  88 83 00 00 */	lbz r4, 0(r3)
/* 80CEFE70  28 04 00 00 */	cmplwi r4, 0
/* 80CEFE74  41 82 00 0C */	beq lbl_80CEFE80
/* 80CEFE78  38 04 FF FF */	addi r0, r4, -1
/* 80CEFE7C  98 03 00 00 */	stb r0, 0(r3)
lbl_80CEFE80:
/* 80CEFE80  88 63 00 00 */	lbz r3, 0(r3)
/* 80CEFE84  4E 80 00 20 */	blr 
