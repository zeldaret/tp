lbl_807E8A08:
/* 807E8A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E8A0C  7C 08 02 A6 */	mflr r0
/* 807E8A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E8A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E8A18  93 C1 00 08 */	stw r30, 8(r1)
/* 807E8A1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E8A20  7C 9F 23 78 */	mr r31, r4
/* 807E8A24  41 82 00 40 */	beq lbl_807E8A64
/* 807E8A28  3C 80 80 7F */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 807E8A2C  38 84 FB 30 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 807E8A30  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807E8A34  38 04 00 0C */	addi r0, r4, 0xc
/* 807E8A38  90 1E 00 20 */	stw r0, 0x20(r30)
/* 807E8A3C  38 04 00 18 */	addi r0, r4, 0x18
/* 807E8A40  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 807E8A44  38 04 00 24 */	addi r0, r4, 0x24
/* 807E8A48  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807E8A4C  38 80 00 00 */	li r4, 0
/* 807E8A50  4B 88 EB A0 */	b __dt__11dBgS_GndChkFv
/* 807E8A54  7F E0 07 35 */	extsh. r0, r31
/* 807E8A58  40 81 00 0C */	ble lbl_807E8A64
/* 807E8A5C  7F C3 F3 78 */	mr r3, r30
/* 807E8A60  4B AE 62 DC */	b __dl__FPv
lbl_807E8A64:
/* 807E8A64  7F C3 F3 78 */	mr r3, r30
/* 807E8A68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E8A6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E8A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E8A74  7C 08 03 A6 */	mtlr r0
/* 807E8A78  38 21 00 10 */	addi r1, r1, 0x10
/* 807E8A7C  4E 80 00 20 */	blr 
