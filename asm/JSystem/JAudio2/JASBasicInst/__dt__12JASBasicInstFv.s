lbl_8029807C:
/* 8029807C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298080  7C 08 02 A6 */	mflr r0
/* 80298084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029808C  93 C1 00 08 */	stw r30, 8(r1)
/* 80298090  7C 7E 1B 79 */	or. r30, r3, r3
/* 80298094  7C 9F 23 78 */	mr r31, r4
/* 80298098  41 82 00 44 */	beq lbl_802980DC
/* 8029809C  3C 60 80 3C */	lis r3, __vt__12JASBasicInst@ha /* 0x803C76E8@ha */
/* 802980A0  38 03 76 E8 */	addi r0, r3, __vt__12JASBasicInst@l /* 0x803C76E8@l */
/* 802980A4  90 1E 00 00 */	stw r0, 0(r30)
/* 802980A8  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802980AC  3C 80 80 2A */	lis r4, __dt__Q212JASBasicInst7TKeymapFv@ha /* 0x80298250@ha */
/* 802980B0  38 84 82 50 */	addi r4, r4, __dt__Q212JASBasicInst7TKeymapFv@l /* 0x80298250@l */
/* 802980B4  48 0C 9B B9 */	bl __destroy_new_array
/* 802980B8  28 1E 00 00 */	cmplwi r30, 0
/* 802980BC  41 82 00 10 */	beq lbl_802980CC
/* 802980C0  3C 60 80 3C */	lis r3, __vt__7JASInst@ha /* 0x803C76FC@ha */
/* 802980C4  38 03 76 FC */	addi r0, r3, __vt__7JASInst@l /* 0x803C76FC@l */
/* 802980C8  90 1E 00 00 */	stw r0, 0(r30)
lbl_802980CC:
/* 802980CC  7F E0 07 35 */	extsh. r0, r31
/* 802980D0  40 81 00 0C */	ble lbl_802980DC
/* 802980D4  7F C3 F3 78 */	mr r3, r30
/* 802980D8  48 03 6C 65 */	bl __dl__FPv
lbl_802980DC:
/* 802980DC  7F C3 F3 78 */	mr r3, r30
/* 802980E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802980E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802980E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802980EC  7C 08 03 A6 */	mtlr r0
/* 802980F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802980F4  4E 80 00 20 */	blr 
