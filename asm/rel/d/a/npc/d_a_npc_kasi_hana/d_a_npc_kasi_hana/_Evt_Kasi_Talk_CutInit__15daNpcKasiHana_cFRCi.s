lbl_80A1F740:
/* 80A1F740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1F744  7C 08 02 A6 */	mflr r0
/* 80A1F748  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1F74C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1F750  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A1F754  7C 7E 1B 78 */	mr r30, r3
/* 80A1F758  7C 9F 23 78 */	mr r31, r4
/* 80A1F75C  3C 60 80 A2 */	lis r3, lit_6026@ha
/* 80A1F760  38 83 12 EC */	addi r4, r3, lit_6026@l
/* 80A1F764  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1F768  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1F76C  90 61 00 08 */	stw r3, 8(r1)
/* 80A1F770  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1F774  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1F778  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1F77C  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1F780  4B 73 0F 6C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F784  90 61 00 08 */	stw r3, 8(r1)
/* 80A1F788  38 7E 14 50 */	addi r3, r30, 0x1450
/* 80A1F78C  4B 73 0F 60 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F790  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A1F794  38 7E 14 58 */	addi r3, r30, 0x1458
/* 80A1F798  4B 73 0F 54 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1F79C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1F7A0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A1F7A4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1F7A8  41 82 00 70 */	beq lbl_80A1F818
/* 80A1F7AC  40 80 00 10 */	bge lbl_80A1F7BC
/* 80A1F7B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1F7B4  41 82 00 20 */	beq lbl_80A1F7D4
/* 80A1F7B8  48 00 00 8C */	b lbl_80A1F844
lbl_80A1F7BC:
/* 80A1F7BC  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80A1F7C0  41 82 00 78 */	beq lbl_80A1F838
/* 80A1F7C4  40 80 00 80 */	bge lbl_80A1F844
/* 80A1F7C8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A1F7CC  40 80 00 5C */	bge lbl_80A1F828
/* 80A1F7D0  48 00 00 74 */	b lbl_80A1F844
lbl_80A1F7D4:
/* 80A1F7D4  7F C3 F3 78 */	mr r3, r30
/* 80A1F7D8  38 80 00 00 */	li r4, 0
/* 80A1F7DC  4B FF E0 49 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1F7E0  7F C3 F3 78 */	mr r3, r30
/* 80A1F7E4  38 80 00 00 */	li r4, 0
/* 80A1F7E8  3C A0 80 A2 */	lis r5, lit_3998@ha
/* 80A1F7EC  C0 25 10 90 */	lfs f1, lit_3998@l(r5)
/* 80A1F7F0  38 A0 00 00 */	li r5, 0
/* 80A1F7F4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1F7F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1F7FC  7D 89 03 A6 */	mtctr r12
/* 80A1F800  4E 80 04 21 */	bctrl 
/* 80A1F804  7F C3 F3 78 */	mr r3, r30
/* 80A1F808  80 9E 14 38 */	lwz r4, 0x1438(r30)
/* 80A1F80C  38 A1 00 08 */	addi r5, r1, 8
/* 80A1F810  4B 73 45 0C */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A1F814  48 00 00 30 */	b lbl_80A1F844
lbl_80A1F818:
/* 80A1F818  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1F81C  64 00 00 02 */	oris r0, r0, 2
/* 80A1F820  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1F824  48 00 00 20 */	b lbl_80A1F844
lbl_80A1F828:
/* 80A1F828  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1F82C  64 00 00 04 */	oris r0, r0, 4
/* 80A1F830  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1F834  48 00 00 10 */	b lbl_80A1F844
lbl_80A1F838:
/* 80A1F838  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1F83C  60 00 10 00 */	ori r0, r0, 0x1000
/* 80A1F840  90 1E 14 68 */	stw r0, 0x1468(r30)
lbl_80A1F844:
/* 80A1F844  38 60 00 01 */	li r3, 1
/* 80A1F848  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1F84C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A1F850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1F854  7C 08 03 A6 */	mtlr r0
/* 80A1F858  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1F85C  4E 80 00 20 */	blr 
