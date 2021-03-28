lbl_809BDB50:
/* 809BDB50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDB54  7C 08 02 A6 */	mflr r0
/* 809BDB58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDB5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDB60  93 C1 00 08 */	stw r30, 8(r1)
/* 809BDB64  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BDB68  7C 9E 23 78 */	mr r30, r4
/* 809BDB6C  41 82 00 C4 */	beq lbl_809BDC30
/* 809BDB70  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809BDB74  38 03 E7 4C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809BDB78  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809BDB7C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809BDB80  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDB84  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDB88  38 A0 00 0C */	li r5, 0xc
/* 809BDB8C  38 C0 00 03 */	li r6, 3
/* 809BDB90  4B 9A 41 58 */	b __destroy_arr
/* 809BDB94  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809BDB98  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDB9C  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDBA0  38 A0 00 0C */	li r5, 0xc
/* 809BDBA4  38 C0 00 03 */	li r6, 3
/* 809BDBA8  4B 9A 41 40 */	b __destroy_arr
/* 809BDBAC  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809BDBB0  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDBB4  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDBB8  38 A0 00 0C */	li r5, 0xc
/* 809BDBBC  38 C0 00 03 */	li r6, 3
/* 809BDBC0  4B 9A 41 28 */	b __destroy_arr
/* 809BDBC4  38 7F 00 78 */	addi r3, r31, 0x78
/* 809BDBC8  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDBCC  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDBD0  38 A0 00 0C */	li r5, 0xc
/* 809BDBD4  38 C0 00 03 */	li r6, 3
/* 809BDBD8  4B 9A 41 10 */	b __destroy_arr
/* 809BDBDC  38 7F 00 54 */	addi r3, r31, 0x54
/* 809BDBE0  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDBE4  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDBE8  38 A0 00 0C */	li r5, 0xc
/* 809BDBEC  38 C0 00 03 */	li r6, 3
/* 809BDBF0  4B 9A 40 F8 */	b __destroy_arr
/* 809BDBF4  38 7F 00 30 */	addi r3, r31, 0x30
/* 809BDBF8  3C 80 80 9C */	lis r4, __dt__4cXyzFv@ha
/* 809BDBFC  38 84 D6 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 809BDC00  38 A0 00 0C */	li r5, 0xc
/* 809BDC04  38 C0 00 03 */	li r6, 3
/* 809BDC08  4B 9A 40 E0 */	b __destroy_arr
/* 809BDC0C  28 1F 00 00 */	cmplwi r31, 0
/* 809BDC10  41 82 00 10 */	beq lbl_809BDC20
/* 809BDC14  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809BDC18  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809BDC1C  90 1F 00 04 */	stw r0, 4(r31)
lbl_809BDC20:
/* 809BDC20  7F C0 07 35 */	extsh. r0, r30
/* 809BDC24  40 81 00 0C */	ble lbl_809BDC30
/* 809BDC28  7F E3 FB 78 */	mr r3, r31
/* 809BDC2C  4B 91 11 10 */	b __dl__FPv
lbl_809BDC30:
/* 809BDC30  7F E3 FB 78 */	mr r3, r31
/* 809BDC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDC38  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BDC3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDC40  7C 08 03 A6 */	mtlr r0
/* 809BDC44  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDC48  4E 80 00 20 */	blr 
