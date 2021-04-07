lbl_80595638:
/* 80595638  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8059563C  7C 08 02 A6 */	mflr r0
/* 80595640  90 01 00 64 */	stw r0, 0x64(r1)
/* 80595644  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80595648  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8059564C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80595650  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80595654  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80595658  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 8059565C  39 61 00 30 */	addi r11, r1, 0x30
/* 80595660  4B DC CB 7D */	bl _savegpr_29
/* 80595664  7C 7F 1B 78 */	mr r31, r3
/* 80595668  C3 A3 06 50 */	lfs f29, 0x650(r3)
/* 8059566C  3B BF 05 E0 */	addi r29, r31, 0x5e0
/* 80595670  3B C0 00 02 */	li r30, 2
/* 80595674  3C 60 80 59 */	lis r3, M_attr__14daObjOnCloth_c@ha /* 0x80595CB4@ha */
/* 80595678  38 63 5C B4 */	addi r3, r3, M_attr__14daObjOnCloth_c@l /* 0x80595CB4@l */
/* 8059567C  C3 C3 00 1C */	lfs f30, 0x1c(r3)
/* 80595680  C3 E3 00 20 */	lfs f31, 0x20(r3)
lbl_80595684:
/* 80595684  38 61 00 08 */	addi r3, r1, 8
/* 80595688  38 9D 00 24 */	addi r4, r29, 0x24
/* 8059568C  FC 00 E8 50 */	fneg f0, f29
/* 80595690  EC 20 07 B2 */	fmuls f1, f0, f30
/* 80595694  4B CD 14 F1 */	bl __ml__4cXyzCFf
/* 80595698  38 7D 00 18 */	addi r3, r29, 0x18
/* 8059569C  38 81 00 08 */	addi r4, r1, 8
/* 805956A0  7C 65 1B 78 */	mr r5, r3
/* 805956A4  4B DB 19 ED */	bl PSVECAdd
/* 805956A8  EF BD 07 F2 */	fmuls f29, f29, f31
/* 805956AC  37 DE FF FF */	addic. r30, r30, -1
/* 805956B0  3B BD FF C8 */	addi r29, r29, -56
/* 805956B4  41 81 FF D0 */	bgt lbl_80595684
/* 805956B8  38 9F 06 50 */	addi r4, r31, 0x650
/* 805956BC  38 BF 06 54 */	addi r5, r31, 0x654
/* 805956C0  3C 60 80 59 */	lis r3, M_attr__14daObjOnCloth_c@ha /* 0x80595CB4@ha */
/* 805956C4  3B A3 5C B4 */	addi r29, r3, M_attr__14daObjOnCloth_c@l /* 0x80595CB4@l */
/* 805956C8  A8 7D 00 2A */	lha r3, 0x2a(r29)
/* 805956CC  34 03 FF FF */	addic. r0, r3, -1
/* 805956D0  7C 09 03 A6 */	mtctr r0
/* 805956D4  40 81 00 18 */	ble lbl_805956EC
lbl_805956D8:
/* 805956D8  C0 05 00 00 */	lfs f0, 0(r5)
/* 805956DC  D0 04 00 00 */	stfs f0, 0(r4)
/* 805956E0  38 84 00 04 */	addi r4, r4, 4
/* 805956E4  38 A5 00 04 */	addi r5, r5, 4
/* 805956E8  42 00 FF F0 */	bdnz lbl_805956D8
lbl_805956EC:
/* 805956EC  3C 60 80 59 */	lis r3, lit_3676@ha /* 0x80595CF8@ha */
/* 805956F0  C0 03 5C F8 */	lfs f0, lit_3676@l(r3)  /* 0x80595CF8@l */
/* 805956F4  A8 1D 00 2A */	lha r0, 0x2a(r29)
/* 805956F8  54 00 10 3A */	slwi r0, r0, 2
/* 805956FC  7C 7F 02 14 */	add r3, r31, r0
/* 80595700  D0 03 06 4C */	stfs f0, 0x64c(r3)
/* 80595704  7F E3 FB 78 */	mr r3, r31
/* 80595708  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059570C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80595710  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80595714  4B A8 53 81 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80595718  3C 60 80 59 */	lis r3, M_attr__14daObjOnCloth_c@ha /* 0x80595CB4@ha */
/* 8059571C  38 83 5C B4 */	addi r4, r3, M_attr__14daObjOnCloth_c@l /* 0x80595CB4@l */
/* 80595720  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80595724  EC 00 00 32 */	fmuls f0, f0, f0
/* 80595728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059572C  41 81 00 28 */	bgt lbl_80595754
/* 80595730  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80595734  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80595738  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8059573C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80595740  40 81 00 14 */	ble lbl_80595754
/* 80595744  A8 1D 00 2A */	lha r0, 0x2a(r29)
/* 80595748  54 00 10 3A */	slwi r0, r0, 2
/* 8059574C  7C 7F 02 14 */	add r3, r31, r0
/* 80595750  D0 23 06 4C */	stfs f1, 0x64c(r3)
lbl_80595754:
/* 80595754  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80595758  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8059575C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80595760  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80595764  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80595768  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 8059576C  39 61 00 30 */	addi r11, r1, 0x30
/* 80595770  4B DC CA B9 */	bl _restgpr_29
/* 80595774  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80595778  7C 08 03 A6 */	mtlr r0
/* 8059577C  38 21 00 60 */	addi r1, r1, 0x60
/* 80595780  4E 80 00 20 */	blr 
