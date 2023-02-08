lbl_8055A130:
/* 8055A130  80 83 0D BC */	lwz r4, 0xdbc(r3)
/* 8055A134  2C 04 00 00 */	cmpwi r4, 0
/* 8055A138  4D 82 00 20 */	beqlr 
/* 8055A13C  38 04 FF FF */	addi r0, r4, -1
/* 8055A140  90 03 0D BC */	stw r0, 0xdbc(r3)
/* 8055A144  4E 80 00 20 */	blr 
