lbl_80470674:
/* 80470674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80470678  7C 08 02 A6 */	mflr r0
/* 8047067C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80470680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80470684  7C 7F 1B 78 */	mr r31, r3
/* 80470688  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 8047068C  7F E4 FB 78 */	mr r4, r31
/* 80470690  3C A0 80 48 */	lis r5, kibako_jc_data@ha
/* 80470694  38 A5 A7 10 */	addi r5, r5, kibako_jc_data@l
/* 80470698  80 DF 05 70 */	lwz r6, 0x570(r31)
/* 8047069C  38 E0 00 01 */	li r7, 1
/* 804706A0  4B BC 56 00 */	b init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 804706A4  2C 03 00 00 */	cmpwi r3, 0
/* 804706A8  40 82 00 0C */	bne lbl_804706B4
/* 804706AC  38 60 00 00 */	li r3, 0
/* 804706B0  48 00 00 10 */	b lbl_804706C0
lbl_804706B4:
/* 804706B4  7F E3 FB 78 */	mr r3, r31
/* 804706B8  48 00 2D 31 */	bl mode_init_wait__12daObjCarry_cFv
/* 804706BC  38 60 00 01 */	li r3, 1
lbl_804706C0:
/* 804706C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804706C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804706C8  7C 08 03 A6 */	mtlr r0
/* 804706CC  38 21 00 10 */	addi r1, r1, 0x10
/* 804706D0  4E 80 00 20 */	blr 
