lbl_80BE18E0:
/* 80BE18E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE18E4  7C 08 02 A6 */	mflr r0
/* 80BE18E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE18EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE18F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE18F4  41 82 00 1C */	beq lbl_80BE1910
/* 80BE18F8  3C A0 80 BE */	lis r5, __vt__8cM3dGLin@ha
/* 80BE18FC  38 05 21 A8 */	addi r0, r5, __vt__8cM3dGLin@l
/* 80BE1900  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BE1904  7C 80 07 35 */	extsh. r0, r4
/* 80BE1908  40 81 00 08 */	ble lbl_80BE1910
/* 80BE190C  4B 6E D4 30 */	b __dl__FPv
lbl_80BE1910:
/* 80BE1910  7F E3 FB 78 */	mr r3, r31
/* 80BE1914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE191C  7C 08 03 A6 */	mtlr r0
/* 80BE1920  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1924  4E 80 00 20 */	blr 
