lbl_80B6A874:
/* 80B6A874  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6A878  7C 08 02 A6 */	mflr r0
/* 80B6A87C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6A880  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6A884  7C 7F 1B 78 */	mr r31, r3
/* 80B6A888  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B6A88C  2C 00 00 02 */	cmpwi r0, 2
/* 80B6A890  41 82 00 38 */	beq lbl_80B6A8C8
/* 80B6A894  40 80 01 B4 */	bge lbl_80B6AA48
/* 80B6A898  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A89C  40 80 00 0C */	bge lbl_80B6A8A8
/* 80B6A8A0  48 00 01 A8 */	b lbl_80B6AA48
/* 80B6A8A4  48 00 01 A4 */	b lbl_80B6AA48
lbl_80B6A8A8:
/* 80B6A8A8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6A8AC  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A8B0  40 82 00 18 */	bne lbl_80B6A8C8
/* 80B6A8B4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B6A8B8  38 A0 00 00 */	li r5, 0
/* 80B6A8BC  4B 5E 13 35 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B6A8C0  38 00 00 02 */	li r0, 2
/* 80B6A8C4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6A8C8:
/* 80B6A8C8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B6A8CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A8D0  40 82 01 78 */	bne lbl_80B6AA48
/* 80B6A8D4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6A8D8  28 00 00 00 */	cmplwi r0, 0
/* 80B6A8DC  40 82 00 20 */	bne lbl_80B6A8FC
/* 80B6A8E0  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80B6A8E4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B6A8E8  7C 03 00 00 */	cmpw r3, r0
/* 80B6A8EC  41 82 00 10 */	beq lbl_80B6A8FC
/* 80B6A8F0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B6A8F4  28 00 00 00 */	cmplwi r0, 0
/* 80B6A8F8  40 82 00 F8 */	bne lbl_80B6A9F0
lbl_80B6A8FC:
/* 80B6A8FC  7F E3 FB 78 */	mr r3, r31
/* 80B6A900  38 80 00 00 */	li r4, 0
/* 80B6A904  38 A0 00 00 */	li r5, 0
/* 80B6A908  38 C0 00 00 */	li r6, 0
/* 80B6A90C  38 E0 00 00 */	li r7, 0
/* 80B6A910  4B 5E 13 69 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B6A914  2C 03 00 00 */	cmpwi r3, 0
/* 80B6A918  41 82 00 48 */	beq lbl_80B6A960
/* 80B6A91C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B6A920  38 81 00 08 */	addi r4, r1, 8
/* 80B6A924  4B 6D FC 05 */	bl getEventId__10dMsgFlow_cFPi
/* 80B6A928  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B6A92C  28 00 00 01 */	cmplwi r0, 1
/* 80B6A930  40 82 00 30 */	bne lbl_80B6A960
/* 80B6A934  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6A938  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6A93C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6A940  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B6A944  4B 5D AD 9D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B6A948  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6A94C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B6A950  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B6A954  4B 4D 7B 15 */	bl reset__14dEvt_control_cFv
/* 80B6A958  38 00 00 03 */	li r0, 3
/* 80B6A95C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B6A960:
/* 80B6A960  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A964  2C 00 00 01 */	cmpwi r0, 1
/* 80B6A968  41 82 00 2C */	beq lbl_80B6A994
/* 80B6A96C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6A970  4B 5D AD 8D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B6A974  38 00 00 00 */	li r0, 0
/* 80B6A978  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6A97C  3C 60 80 B7 */	lis r3, lit_4190@ha /* 0x80B6BD6C@ha */
/* 80B6A980  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)  /* 0x80B6BD6C@l */
/* 80B6A984  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6A988  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A98C  38 00 00 01 */	li r0, 1
/* 80B6A990  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6A994:
/* 80B6A994  38 00 00 00 */	li r0, 0
/* 80B6A998  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A99C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B6A9A0  28 00 00 00 */	cmplwi r0, 0
/* 80B6A9A4  40 82 00 10 */	bne lbl_80B6A9B4
/* 80B6A9A8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B6A9AC  28 00 00 00 */	cmplwi r0, 0
/* 80B6A9B0  40 82 00 98 */	bne lbl_80B6AA48
lbl_80B6A9B4:
/* 80B6A9B4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A9B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B6A9BC  41 82 00 28 */	beq lbl_80B6A9E4
/* 80B6A9C0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6A9C4  4B 5D AD 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B6A9C8  38 00 00 00 */	li r0, 0
/* 80B6A9CC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6A9D0  3C 60 80 B7 */	lis r3, lit_4190@ha /* 0x80B6BD6C@ha */
/* 80B6A9D4  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)  /* 0x80B6BD6C@l */
/* 80B6A9D8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6A9DC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A9E0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6A9E4:
/* 80B6A9E4  38 00 00 00 */	li r0, 0
/* 80B6A9E8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6A9EC  48 00 00 5C */	b lbl_80B6AA48
lbl_80B6A9F0:
/* 80B6A9F0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B6A9F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B6A9F8  41 82 00 2C */	beq lbl_80B6AA24
/* 80B6A9FC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6AA00  4B 5D AC FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B6AA04  38 00 00 00 */	li r0, 0
/* 80B6AA08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B6AA0C  3C 60 80 B7 */	lis r3, lit_4190@ha /* 0x80B6BD6C@ha */
/* 80B6AA10  C0 03 BD 6C */	lfs f0, lit_4190@l(r3)  /* 0x80B6BD6C@l */
/* 80B6AA14  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6AA18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6AA1C  38 00 00 01 */	li r0, 1
/* 80B6AA20  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B6AA24:
/* 80B6AA24  38 00 00 00 */	li r0, 0
/* 80B6AA28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B6AA2C  7F E3 FB 78 */	mr r3, r31
/* 80B6AA30  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B6AA34  38 A0 FF FF */	li r5, -1
/* 80B6AA38  38 C0 FF FF */	li r6, -1
/* 80B6AA3C  38 E0 00 0F */	li r7, 0xf
/* 80B6AA40  39 00 00 00 */	li r8, 0
/* 80B6AA44  4B 5E 0C 05 */	bl step__8daNpcT_cFsiiii
lbl_80B6AA48:
/* 80B6AA48  38 60 00 00 */	li r3, 0
/* 80B6AA4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6AA50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6AA54  7C 08 03 A6 */	mtlr r0
/* 80B6AA58  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6AA5C  4E 80 00 20 */	blr 
