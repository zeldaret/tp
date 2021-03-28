lbl_800D2C54:
/* 800D2C54  80 83 32 CC */	lwz r4, 0x32cc(r3)
/* 800D2C58  80 03 27 EC */	lwz r0, 0x27ec(r3)
/* 800D2C5C  7C 04 00 40 */	cmplw r4, r0
/* 800D2C60  4D 82 00 20 */	beqlr 
/* 800D2C64  38 00 00 00 */	li r0, 0
/* 800D2C68  B0 03 30 10 */	sth r0, 0x3010(r3)
/* 800D2C6C  80 03 27 EC */	lwz r0, 0x27ec(r3)
/* 800D2C70  90 03 32 CC */	stw r0, 0x32cc(r3)
/* 800D2C74  4E 80 00 20 */	blr 
