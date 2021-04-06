lbl_805947F8:
/* 805947F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805947FC  7C 08 02 A6 */	mflr r0
/* 80594800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594808  93 C1 00 08 */	stw r30, 8(r1)
/* 8059480C  7C 7F 1B 78 */	mr r31, r3
/* 80594810  A8 03 07 74 */	lha r0, 0x774(r3)
/* 80594814  2C 00 00 01 */	cmpwi r0, 1
/* 80594818  41 82 00 D4 */	beq lbl_805948EC
/* 8059481C  40 80 01 1C */	bge lbl_80594938
/* 80594820  2C 00 00 00 */	cmpwi r0, 0
/* 80594824  40 80 00 08 */	bge lbl_8059482C
/* 80594828  48 00 01 10 */	b lbl_80594938
lbl_8059482C:
/* 8059482C  A8 1F 07 76 */	lha r0, 0x776(r31)
/* 80594830  2C 00 FF FF */	cmpwi r0, -1
/* 80594834  41 82 00 54 */	beq lbl_80594888
/* 80594838  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059483C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80594840  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80594844  4B A8 5E CD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80594848  7C 64 1B 78 */	mr r4, r3
/* 8059484C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80594850  4B CD C5 D5 */	bl cLib_distanceAngleS__Fss
/* 80594854  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80594858  40 80 00 30 */	bge lbl_80594888
/* 8059485C  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80594860  64 00 40 00 */	oris r0, r0, 0x4000
/* 80594864  60 00 00 0A */	ori r0, r0, 0xa
/* 80594868  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8059486C  38 00 00 15 */	li r0, 0x15
/* 80594870  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80594874  98 1F 05 47 */	stb r0, 0x547(r31)
/* 80594878  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8059487C  60 00 00 01 */	ori r0, r0, 1
/* 80594880  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 80594884  48 00 00 24 */	b lbl_805948A8
lbl_80594888:
/* 80594888  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8059488C  54 00 00 3E */	slwi r0, r0, 0
/* 80594890  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80594894  80 9F 05 5C */	lwz r4, 0x55c(r31)
/* 80594898  3C 60 C0 00 */	lis r3, 0xC000 /* 0xBFFFFFF5@ha */
/* 8059489C  38 03 FF F5 */	addi r0, r3, 0xFFF5 /* 0xBFFFFFF5@l */
/* 805948A0  7C 80 00 38 */	and r0, r4, r0
/* 805948A4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_805948A8:
/* 805948A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805948AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805948B0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805948B4  28 00 00 00 */	cmplwi r0, 0
/* 805948B8  41 82 00 80 */	beq lbl_80594938
/* 805948BC  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805948C0  28 00 00 01 */	cmplwi r0, 1
/* 805948C4  40 82 00 74 */	bne lbl_80594938
/* 805948C8  38 7F 07 28 */	addi r3, r31, 0x728
/* 805948CC  7F E4 FB 78 */	mr r4, r31
/* 805948D0  A8 BF 07 76 */	lha r5, 0x776(r31)
/* 805948D4  38 C0 00 00 */	li r6, 0
/* 805948D8  38 E0 00 00 */	li r7, 0
/* 805948DC  4B CB 56 B5 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 805948E0  38 00 00 01 */	li r0, 1
/* 805948E4  B0 1F 07 74 */	sth r0, 0x774(r31)
/* 805948E8  48 00 00 50 */	b lbl_80594938
lbl_805948EC:
/* 805948EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805948F0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805948F4  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 805948F8  28 00 00 00 */	cmplwi r0, 0
/* 805948FC  41 82 00 3C */	beq lbl_80594938
/* 80594900  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80594904  28 00 00 01 */	cmplwi r0, 1
/* 80594908  40 82 00 30 */	bne lbl_80594938
/* 8059490C  38 7F 07 28 */	addi r3, r31, 0x728
/* 80594910  7F E4 FB 78 */	mr r4, r31
/* 80594914  38 A0 00 00 */	li r5, 0
/* 80594918  38 C0 00 00 */	li r6, 0
/* 8059491C  4B CB 59 BD */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80594920  2C 03 00 00 */	cmpwi r3, 0
/* 80594924  41 82 00 14 */	beq lbl_80594938
/* 80594928  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8059492C  4B AA DB 3D */	bl reset__14dEvt_control_cFv
/* 80594930  38 00 00 00 */	li r0, 0
/* 80594934  B0 1F 07 74 */	sth r0, 0x774(r31)
lbl_80594938:
/* 80594938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059493C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80594940  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594944  7C 08 03 A6 */	mtlr r0
/* 80594948  38 21 00 10 */	addi r1, r1, 0x10
/* 8059494C  4E 80 00 20 */	blr 
