lbl_80200BCC:
/* 80200BCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80200BD0  7C 08 02 A6 */	mflr r0
/* 80200BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80200BD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80200BDC  48 16 16 01 */	bl _savegpr_29
/* 80200BE0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80200BE4  7C 9E 23 78 */	mr r30, r4
/* 80200BE8  41 82 00 D0 */	beq lbl_80200CB8
/* 80200BEC  3C 60 80 3C */	lis r3, __vt__16dMeter_fmapHIO_c@ha /* 0x803BF0F4@ha */
/* 80200BF0  38 03 F0 F4 */	addi r0, r3, __vt__16dMeter_fmapHIO_c@l /* 0x803BF0F4@l */
/* 80200BF4  90 1D 00 00 */	stw r0, 0(r29)
/* 80200BF8  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 80200BFC  28 1F 00 00 */	cmplwi r31, 0
/* 80200C00  41 82 00 18 */	beq lbl_80200C18
/* 80200C04  4B E0 E1 4D */	bl mDoExt_getGameHeap__Fv
/* 80200C08  7F E4 FB 78 */	mr r4, r31
/* 80200C0C  48 0C D9 3D */	bl free__7JKRHeapFPv
/* 80200C10  38 00 00 00 */	li r0, 0
/* 80200C14  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_80200C18:
/* 80200C18  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 80200C1C  28 1F 00 00 */	cmplwi r31, 0
/* 80200C20  41 82 00 18 */	beq lbl_80200C38
/* 80200C24  4B E0 E1 2D */	bl mDoExt_getGameHeap__Fv
/* 80200C28  7F E4 FB 78 */	mr r4, r31
/* 80200C2C  48 0C D9 1D */	bl free__7JKRHeapFPv
/* 80200C30  38 00 00 00 */	li r0, 0
/* 80200C34  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_80200C38:
/* 80200C38  80 7D 00 08 */	lwz r3, 8(r29)
/* 80200C3C  28 03 00 00 */	cmplwi r3, 0
/* 80200C40  41 82 00 3C */	beq lbl_80200C7C
/* 80200C44  81 83 00 00 */	lwz r12, 0(r3)
/* 80200C48  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80200C4C  7D 89 03 A6 */	mtctr r12
/* 80200C50  4E 80 04 21 */	bctrl 
/* 80200C54  80 7D 00 08 */	lwz r3, 8(r29)
/* 80200C58  28 03 00 00 */	cmplwi r3, 0
/* 80200C5C  41 82 00 18 */	beq lbl_80200C74
/* 80200C60  38 80 00 01 */	li r4, 1
/* 80200C64  81 83 00 00 */	lwz r12, 0(r3)
/* 80200C68  81 8C 00 08 */	lwz r12, 8(r12)
/* 80200C6C  7D 89 03 A6 */	mtctr r12
/* 80200C70  4E 80 04 21 */	bctrl 
lbl_80200C74:
/* 80200C74  38 00 00 00 */	li r0, 0
/* 80200C78  90 1D 00 08 */	stw r0, 8(r29)
lbl_80200C7C:
/* 80200C7C  34 1D 03 14 */	addic. r0, r29, 0x314
/* 80200C80  41 82 00 10 */	beq lbl_80200C90
/* 80200C84  3C 60 80 3C */	lis r3, __vt__19dMeter_mapIconHIO_c@ha /* 0x803BF100@ha */
/* 80200C88  38 03 F1 00 */	addi r0, r3, __vt__19dMeter_mapIconHIO_c@l /* 0x803BF100@l */
/* 80200C8C  90 1D 03 14 */	stw r0, 0x314(r29)
lbl_80200C90:
/* 80200C90  38 7D 02 5C */	addi r3, r29, 0x25c
/* 80200C94  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 80200C98  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 80200C9C  38 A0 00 0C */	li r5, 0xc
/* 80200CA0  38 C0 00 0C */	li r6, 0xc
/* 80200CA4  48 16 10 45 */	bl __destroy_arr
/* 80200CA8  7F C0 07 35 */	extsh. r0, r30
/* 80200CAC  40 81 00 0C */	ble lbl_80200CB8
/* 80200CB0  7F A3 EB 78 */	mr r3, r29
/* 80200CB4  48 0C E0 89 */	bl __dl__FPv
lbl_80200CB8:
/* 80200CB8  7F A3 EB 78 */	mr r3, r29
/* 80200CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80200CC0  48 16 15 69 */	bl _restgpr_29
/* 80200CC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80200CC8  7C 08 03 A6 */	mtlr r0
/* 80200CCC  38 21 00 20 */	addi r1, r1, 0x20
/* 80200CD0  4E 80 00 20 */	blr 
