lbl_8009C8C0:
/* 8009C8C0  80 6D 8A 20 */	lwz r3, m_myObj__10dMdl_mng_c(r13)
/* 8009C8C4  28 03 00 00 */	cmplwi r3, 0
/* 8009C8C8  4D 82 00 20 */	beqlr 
/* 8009C8CC  38 00 00 00 */	li r0, 0
/* 8009C8D0  98 03 00 80 */	stb r0, 0x80(r3)
/* 8009C8D4  4E 80 00 20 */	blr 
