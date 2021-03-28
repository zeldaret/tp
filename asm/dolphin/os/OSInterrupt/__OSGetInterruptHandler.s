lbl_8033D75C:
/* 8033D75C  7C 60 07 34 */	extsh r0, r3
/* 8033D760  80 6D 90 F0 */	lwz r3, InterruptHandlerTable(r13)
/* 8033D764  54 00 10 3A */	slwi r0, r0, 2
/* 8033D768  7C 63 00 2E */	lwzx r3, r3, r0
/* 8033D76C  4E 80 00 20 */	blr 
