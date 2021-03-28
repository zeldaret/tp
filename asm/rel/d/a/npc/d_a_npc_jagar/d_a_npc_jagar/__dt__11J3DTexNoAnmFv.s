lbl_80A14E38:
/* 80A14E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14E3C  7C 08 02 A6 */	mflr r0
/* 80A14E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A14E48  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A14E4C  41 82 00 1C */	beq lbl_80A14E68
/* 80A14E50  3C A0 80 A2 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80A14E54  38 05 AC 60 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80A14E58  90 1F 00 00 */	stw r0, 0(r31)
/* 80A14E5C  7C 80 07 35 */	extsh. r0, r4
/* 80A14E60  40 81 00 08 */	ble lbl_80A14E68
/* 80A14E64  4B 8B 9E D8 */	b __dl__FPv
lbl_80A14E68:
/* 80A14E68  7F E3 FB 78 */	mr r3, r31
/* 80A14E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A14E70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14E74  7C 08 03 A6 */	mtlr r0
/* 80A14E78  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14E7C  4E 80 00 20 */	blr 
