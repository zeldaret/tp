lbl_8070A45C:
/* 8070A45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8070A460  7C 08 02 A6 */	mflr r0
/* 8070A464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8070A468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8070A46C  93 C1 00 08 */	stw r30, 8(r1)
/* 8070A470  7C 7E 1B 79 */	or. r30, r3, r3
/* 8070A474  7C 9F 23 78 */	mr r31, r4
/* 8070A478  41 82 00 38 */	beq lbl_8070A4B0
/* 8070A47C  3C 80 80 71 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8070A5E0@ha */
/* 8070A480  38 84 A5 E0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8070A5E0@l */
/* 8070A484  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8070A488  38 04 00 0C */	addi r0, r4, 0xc
/* 8070A48C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8070A490  38 04 00 18 */	addi r0, r4, 0x18
/* 8070A494  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8070A498  38 80 00 00 */	li r4, 0
/* 8070A49C  4B 96 BA F9 */	bl __dt__9dBgS_AcchFv
/* 8070A4A0  7F E0 07 35 */	extsh. r0, r31
/* 8070A4A4  40 81 00 0C */	ble lbl_8070A4B0
/* 8070A4A8  7F C3 F3 78 */	mr r3, r30
/* 8070A4AC  4B BC 48 91 */	bl __dl__FPv
lbl_8070A4B0:
/* 8070A4B0  7F C3 F3 78 */	mr r3, r30
/* 8070A4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8070A4B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8070A4BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8070A4C0  7C 08 03 A6 */	mtlr r0
/* 8070A4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8070A4C8  4E 80 00 20 */	blr 
