lbl_8061A484:
/* 8061A484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A488  7C 08 02 A6 */	mflr r0
/* 8061A48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A494  93 C1 00 08 */	stw r30, 8(r1)
/* 8061A498  7C 7E 1B 79 */	or. r30, r3, r3
/* 8061A49C  7C 9F 23 78 */	mr r31, r4
/* 8061A4A0  41 82 00 38 */	beq lbl_8061A4D8
/* 8061A4A4  3C 80 80 62 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8061B464@ha */
/* 8061A4A8  38 84 B4 64 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8061B464@l */
/* 8061A4AC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8061A4B0  38 04 00 0C */	addi r0, r4, 0xc
/* 8061A4B4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8061A4B8  38 04 00 18 */	addi r0, r4, 0x18
/* 8061A4BC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8061A4C0  38 80 00 00 */	li r4, 0
/* 8061A4C4  4B A5 BA D1 */	bl __dt__9dBgS_AcchFv
/* 8061A4C8  7F E0 07 35 */	extsh. r0, r31
/* 8061A4CC  40 81 00 0C */	ble lbl_8061A4D8
/* 8061A4D0  7F C3 F3 78 */	mr r3, r30
/* 8061A4D4  4B CB 48 69 */	bl __dl__FPv
lbl_8061A4D8:
/* 8061A4D8  7F C3 F3 78 */	mr r3, r30
/* 8061A4DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A4E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8061A4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A4E8  7C 08 03 A6 */	mtlr r0
/* 8061A4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A4F0  4E 80 00 20 */	blr 
