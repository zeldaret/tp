lbl_806E1858:
/* 806E1858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E185C  7C 08 02 A6 */	mflr r0
/* 806E1860  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E1864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E1868  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E186C  41 82 00 1C */	beq lbl_806E1888
/* 806E1870  3C A0 80 6E */	lis r5, __vt__8cM3dGPla@ha
/* 806E1874  38 05 5B AC */	addi r0, r5, __vt__8cM3dGPla@l
/* 806E1878  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806E187C  7C 80 07 35 */	extsh. r0, r4
/* 806E1880  40 81 00 08 */	ble lbl_806E1888
/* 806E1884  4B BE D4 B8 */	b __dl__FPv
lbl_806E1888:
/* 806E1888  7F E3 FB 78 */	mr r3, r31
/* 806E188C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E1890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E1894  7C 08 03 A6 */	mtlr r0
/* 806E1898  38 21 00 10 */	addi r1, r1, 0x10
/* 806E189C  4E 80 00 20 */	blr 
