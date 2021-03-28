lbl_80014E20:
/* 80014E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014E24  7C 08 02 A6 */	mflr r0
/* 80014E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80014E30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80014E34  41 82 00 30 */	beq lbl_80014E64
/* 80014E38  3C 60 80 3A */	lis r3, __vt__26mDoExt_3DlineMatSortPacket@ha
/* 80014E3C  38 03 32 34 */	addi r0, r3, __vt__26mDoExt_3DlineMatSortPacket@l
/* 80014E40  90 1F 00 00 */	stw r0, 0(r31)
/* 80014E44  41 82 00 10 */	beq lbl_80014E54
/* 80014E48  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80014E4C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80014E50  90 1F 00 00 */	stw r0, 0(r31)
lbl_80014E54:
/* 80014E54  7C 80 07 35 */	extsh. r0, r4
/* 80014E58  40 81 00 0C */	ble lbl_80014E64
/* 80014E5C  7F E3 FB 78 */	mr r3, r31
/* 80014E60  48 2B 9E DD */	bl __dl__FPv
lbl_80014E64:
/* 80014E64  7F E3 FB 78 */	mr r3, r31
/* 80014E68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80014E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014E70  7C 08 03 A6 */	mtlr r0
/* 80014E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80014E78  4E 80 00 20 */	blr 
