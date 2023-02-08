lbl_80A20244:
/* 80A20244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A20248  7C 08 02 A6 */	mflr r0
/* 80A2024C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A20250  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A20254  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A20258  7C 7E 1B 78 */	mr r30, r3
/* 80A2025C  7C 9F 23 78 */	mr r31, r4
/* 80A20260  3C 60 80 A2 */	lis r3, lit_6235@ha /* 0x80A2132C@ha */
/* 80A20264  38 83 13 2C */	addi r4, r3, lit_6235@l /* 0x80A2132C@l */
/* 80A20268  80 64 00 00 */	lwz r3, 0(r4)
/* 80A2026C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A20270  90 61 00 08 */	stw r3, 8(r1)
/* 80A20274  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A20278  80 04 00 08 */	lwz r0, 8(r4)
/* 80A2027C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A20280  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80A20284  4B 73 04 69 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A20288  90 61 00 08 */	stw r3, 8(r1)
/* 80A2028C  38 7E 14 50 */	addi r3, r30, 0x1450
/* 80A20290  4B 73 04 5D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A20294  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A20298  38 7E 14 58 */	addi r3, r30, 0x1458
/* 80A2029C  4B 73 04 51 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A202A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A202A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A202A8  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A202AC  41 82 00 6C */	beq lbl_80A20318
/* 80A202B0  40 80 00 10 */	bge lbl_80A202C0
/* 80A202B4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A202B8  41 82 00 14 */	beq lbl_80A202CC
/* 80A202BC  48 00 00 78 */	b lbl_80A20334
lbl_80A202C0:
/* 80A202C0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A202C4  41 82 00 64 */	beq lbl_80A20328
/* 80A202C8  48 00 00 6C */	b lbl_80A20334
lbl_80A202CC:
/* 80A202CC  7F C3 F3 78 */	mr r3, r30
/* 80A202D0  38 80 00 01 */	li r4, 1
/* 80A202D4  3C A0 80 A2 */	lis r5, lit_3998@ha /* 0x80A21090@ha */
/* 80A202D8  C0 25 10 90 */	lfs f1, lit_3998@l(r5)  /* 0x80A21090@l */
/* 80A202DC  38 A0 00 00 */	li r5, 0
/* 80A202E0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A202E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A202E8  7D 89 03 A6 */	mtctr r12
/* 80A202EC  4E 80 04 21 */	bctrl 
/* 80A202F0  7F C3 F3 78 */	mr r3, r30
/* 80A202F4  38 80 00 00 */	li r4, 0
/* 80A202F8  4B FF D5 2D */	bl setLookMode__15daNpcKasiHana_cFi
/* 80A202FC  38 00 00 56 */	li r0, 0x56
/* 80A20300  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A20304  7F C3 F3 78 */	mr r3, r30
/* 80A20308  80 9E 14 38 */	lwz r4, 0x1438(r30)
/* 80A2030C  38 A1 00 08 */	addi r5, r1, 8
/* 80A20310  4B 73 3A 0D */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A20314  48 00 00 20 */	b lbl_80A20334
lbl_80A20318:
/* 80A20318  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A2031C  60 00 20 00 */	ori r0, r0, 0x2000
/* 80A20320  90 1E 14 68 */	stw r0, 0x1468(r30)
/* 80A20324  48 00 00 10 */	b lbl_80A20334
lbl_80A20328:
/* 80A20328  80 1E 14 68 */	lwz r0, 0x1468(r30)
/* 80A2032C  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A20330  90 1E 14 68 */	stw r0, 0x1468(r30)
lbl_80A20334:
/* 80A20334  38 60 00 01 */	li r3, 1
/* 80A20338  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A2033C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A20340  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A20344  7C 08 03 A6 */	mtlr r0
/* 80A20348  38 21 00 20 */	addi r1, r1, 0x20
/* 80A2034C  4E 80 00 20 */	blr 
