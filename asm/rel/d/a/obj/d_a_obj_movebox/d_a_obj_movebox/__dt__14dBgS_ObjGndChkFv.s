lbl_8047FEE4:
/* 8047FEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047FEE8  7C 08 02 A6 */	mflr r0
/* 8047FEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047FEF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047FEF4  93 C1 00 08 */	stw r30, 8(r1)
/* 8047FEF8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8047FEFC  7C 9F 23 78 */	mr r31, r4
/* 8047FF00  41 82 00 40 */	beq lbl_8047FF40
/* 8047FF04  3C 80 80 48 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 8047FF08  38 84 17 F8 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 8047FF0C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8047FF10  38 04 00 0C */	addi r0, r4, 0xc
/* 8047FF14  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8047FF18  38 04 00 18 */	addi r0, r4, 0x18
/* 8047FF1C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8047FF20  38 04 00 24 */	addi r0, r4, 0x24
/* 8047FF24  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8047FF28  38 80 00 00 */	li r4, 0
/* 8047FF2C  4B BF 76 C4 */	b __dt__11dBgS_GndChkFv
/* 8047FF30  7F E0 07 35 */	extsh. r0, r31
/* 8047FF34  40 81 00 0C */	ble lbl_8047FF40
/* 8047FF38  7F C3 F3 78 */	mr r3, r30
/* 8047FF3C  4B E4 EE 00 */	b __dl__FPv
lbl_8047FF40:
/* 8047FF40  7F C3 F3 78 */	mr r3, r30
/* 8047FF44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047FF48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047FF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047FF50  7C 08 03 A6 */	mtlr r0
/* 8047FF54  38 21 00 10 */	addi r1, r1, 0x10
/* 8047FF58  4E 80 00 20 */	blr 
