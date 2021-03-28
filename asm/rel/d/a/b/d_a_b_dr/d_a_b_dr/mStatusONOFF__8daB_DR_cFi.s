lbl_805BB64C:
/* 805BB64C  2C 04 00 01 */	cmpwi r4, 1
/* 805BB650  41 82 00 50 */	beq lbl_805BB6A0
/* 805BB654  40 80 00 10 */	bge lbl_805BB664
/* 805BB658  2C 04 00 00 */	cmpwi r4, 0
/* 805BB65C  40 80 00 14 */	bge lbl_805BB670
/* 805BB660  4E 80 00 20 */	blr 
lbl_805BB664:
/* 805BB664  2C 04 00 03 */	cmpwi r4, 3
/* 805BB668  4C 80 00 20 */	bgelr 
/* 805BB66C  48 00 00 58 */	b lbl_805BB6C4
lbl_805BB670:
/* 805BB670  38 00 00 00 */	li r0, 0
/* 805BB674  98 03 05 46 */	stb r0, 0x546(r3)
/* 805BB678  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 805BB67C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805BB680  90 03 05 5C */	stw r0, 0x55c(r3)
/* 805BB684  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 805BB688  54 00 00 3E */	slwi r0, r0, 0
/* 805BB68C  90 03 04 9C */	stw r0, 0x49c(r3)
/* 805BB690  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 805BB694  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805BB698  90 03 04 9C */	stw r0, 0x49c(r3)
/* 805BB69C  4E 80 00 20 */	blr 
lbl_805BB6A0:
/* 805BB6A0  38 00 00 55 */	li r0, 0x55
/* 805BB6A4  98 03 05 46 */	stb r0, 0x546(r3)
/* 805BB6A8  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 805BB6AC  60 00 00 04 */	ori r0, r0, 4
/* 805BB6B0  90 03 05 5C */	stw r0, 0x55c(r3)
/* 805BB6B4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 805BB6B8  64 00 00 20 */	oris r0, r0, 0x20
/* 805BB6BC  90 03 04 9C */	stw r0, 0x49c(r3)
/* 805BB6C0  4E 80 00 20 */	blr 
lbl_805BB6C4:
/* 805BB6C4  38 00 00 3C */	li r0, 0x3c
/* 805BB6C8  98 03 05 46 */	stb r0, 0x546(r3)
/* 805BB6CC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 805BB6D0  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 805BB6D4  90 03 04 9C */	stw r0, 0x49c(r3)
/* 805BB6D8  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 805BB6DC  60 00 00 04 */	ori r0, r0, 4
/* 805BB6E0  90 03 05 5C */	stw r0, 0x55c(r3)
/* 805BB6E4  4E 80 00 20 */	blr 
