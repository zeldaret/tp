lbl_8058CF04:
/* 8058CF04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CF08  7C 08 02 A6 */	mflr r0
/* 8058CF0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CF10  3C 60 80 59 */	lis r3, l_HIO@ha /* 0x8058D0CC@ha */
/* 8058CF14  38 63 D0 CC */	addi r3, r3, l_HIO@l /* 0x8058D0CC@l */
/* 8058CF18  4B FF F6 F5 */	bl __ct__16daKtOnFire_HIO_cFv
/* 8058CF1C  3C 80 80 59 */	lis r4, __dt__16daKtOnFire_HIO_cFv@ha /* 0x8058CEA8@ha */
/* 8058CF20  38 84 CE A8 */	addi r4, r4, __dt__16daKtOnFire_HIO_cFv@l /* 0x8058CEA8@l */
/* 8058CF24  3C A0 80 59 */	lis r5, lit_3619@ha /* 0x8058D0C0@ha */
/* 8058CF28  38 A5 D0 C0 */	addi r5, r5, lit_3619@l /* 0x8058D0C0@l */
/* 8058CF2C  4B FF F6 6D */	bl __register_global_object
/* 8058CF30  3C 60 80 59 */	lis r3, mCcDCyl__12daKtOnFire_c@ha /* 0x8058CFF4@ha */
/* 8058CF34  38 63 CF F4 */	addi r3, r3, mCcDCyl__12daKtOnFire_c@l /* 0x8058CFF4@l */
/* 8058CF38  38 A3 FF FC */	addi r5, r3, -4
/* 8058CF3C  3C 60 80 59 */	lis r3, mCcDObjInfo__12daKtOnFire_c@ha /* 0x8058CF88@ha */
/* 8058CF40  38 63 CF 88 */	addi r3, r3, mCcDObjInfo__12daKtOnFire_c@l /* 0x8058CF88@l */
/* 8058CF44  38 83 FF FC */	addi r4, r3, -4
/* 8058CF48  38 00 00 06 */	li r0, 6
/* 8058CF4C  7C 09 03 A6 */	mtctr r0
lbl_8058CF50:
/* 8058CF50  80 64 00 04 */	lwz r3, 4(r4)
/* 8058CF54  84 04 00 08 */	lwzu r0, 8(r4)
/* 8058CF58  90 65 00 04 */	stw r3, 4(r5)
/* 8058CF5C  94 05 00 08 */	stwu r0, 8(r5)
/* 8058CF60  42 00 FF F0 */	bdnz lbl_8058CF50
/* 8058CF64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CF68  7C 08 03 A6 */	mtlr r0
/* 8058CF6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CF70  4E 80 00 20 */	blr 
