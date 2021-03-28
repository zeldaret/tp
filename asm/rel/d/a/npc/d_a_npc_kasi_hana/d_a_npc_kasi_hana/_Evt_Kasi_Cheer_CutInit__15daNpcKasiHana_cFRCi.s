lbl_80A1FE6C:
/* 80A1FE6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1FE70  7C 08 02 A6 */	mflr r0
/* 80A1FE74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1FE78  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1FE7C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A1FE80  7C 7E 1B 78 */	mr r30, r3
/* 80A1FE84  7C 9F 23 78 */	mr r31, r4
/* 80A1FE88  3C 60 80 A2 */	lis r3, lit_6169@ha
/* 80A1FE8C  38 83 13 0C */	addi r4, r3, lit_6169@l
/* 80A1FE90  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1FE94  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1FE98  90 61 00 08 */	stw r3, 8(r1)
/* 80A1FE9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1FEA0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1FEA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1FEA8  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A1FEAC  4B 73 08 40 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FEB0  90 61 00 08 */	stw r3, 8(r1)
/* 80A1FEB4  38 7E 14 50 */	addi r3, r30, 0x1450
/* 80A1FEB8  4B 73 08 34 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FEBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A1FEC0  38 7E 14 58 */	addi r3, r30, 0x1458
/* 80A1FEC4  4B 73 08 28 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FEC8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1FECC  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A1FED0  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1FED4  41 82 00 6C */	beq lbl_80A1FF40
/* 80A1FED8  40 80 00 10 */	bge lbl_80A1FEE8
/* 80A1FEDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A1FEE0  41 82 00 14 */	beq lbl_80A1FEF4
/* 80A1FEE4  48 00 00 78 */	b lbl_80A1FF5C
lbl_80A1FEE8:
/* 80A1FEE8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A1FEEC  41 82 00 64 */	beq lbl_80A1FF50
/* 80A1FEF0  48 00 00 6C */	b lbl_80A1FF5C
lbl_80A1FEF4:
/* 80A1FEF4  7F C3 F3 78 */	mr r3, r30
/* 80A1FEF8  38 80 00 01 */	li r4, 1
/* 80A1FEFC  3C A0 80 A2 */	lis r5, lit_3998@ha
/* 80A1FF00  C0 25 10 90 */	lfs f1, lit_3998@l(r5)
/* 80A1FF04  38 A0 00 00 */	li r5, 0
/* 80A1FF08  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A1FF0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A1FF10  7D 89 03 A6 */	mtctr r12
/* 80A1FF14  4E 80 04 21 */	bctrl 
/* 80A1FF18  7F C3 F3 78 */	mr r3, r30
/* 80A1FF1C  38 80 00 00 */	li r4, 0
/* 80A1FF20  4B FF D9 05 */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A1FF24  38 00 00 56 */	li r0, 0x56
/* 80A1FF28  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A1FF2C  7F C3 F3 78 */	mr r3, r30
/* 80A1FF30  80 9E 14 38 */	lwz r4, 0x1438(r30)
/* 80A1FF34  38 A1 00 08 */	addi r5, r1, 8
/* 80A1FF38  4B 73 3D E4 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A1FF3C  48 00 00 20 */	b lbl_80A1FF5C
lbl_80A1FF40:
/* 80A1FF40  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1FF44  60 00 80 00 */	ori r0, r0, 0x8000
/* 80A1FF48  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A1FF4C  48 00 00 10 */	b lbl_80A1FF5C
lbl_80A1FF50:
/* 80A1FF50  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A1FF54  64 00 00 01 */	oris r0, r0, 1
/* 80A1FF58  90 1E 14 68 */	stw r0, 0x1468(r30)
lbl_80A1FF5C:
/* 80A1FF5C  38 60 00 01 */	li r3, 1
/* 80A1FF60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1FF64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A1FF68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1FF6C  7C 08 03 A6 */	mtlr r0
/* 80A1FF70  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1FF74  4E 80 00 20 */	blr 
