lbl_80CBFDD8:
/* 80CBFDD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFDDC  7C 08 02 A6 */	mflr r0
/* 80CBFDE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFDE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFDE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBFDEC  41 82 00 1C */	beq lbl_80CBFE08
/* 80CBFDF0  3C A0 80 CC */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CC0A60@ha */
/* 80CBFDF4  38 05 0A 60 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CC0A60@l */
/* 80CBFDF8  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CBFDFC  7C 80 07 35 */	extsh. r0, r4
/* 80CBFE00  40 81 00 08 */	ble lbl_80CBFE08
/* 80CBFE04  4B 60 EF 39 */	bl __dl__FPv
lbl_80CBFE08:
/* 80CBFE08  7F E3 FB 78 */	mr r3, r31
/* 80CBFE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFE14  7C 08 03 A6 */	mtlr r0
/* 80CBFE18  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFE1C  4E 80 00 20 */	blr 
