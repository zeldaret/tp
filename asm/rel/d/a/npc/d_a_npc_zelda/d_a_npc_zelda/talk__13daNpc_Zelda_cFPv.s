lbl_80B76B74:
/* 80B76B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B76B78  7C 08 02 A6 */	mflr r0
/* 80B76B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B76B80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B76B84  7C 7F 1B 78 */	mr r31, r3
/* 80B76B88  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B76B8C  2C 00 00 02 */	cmpwi r0, 2
/* 80B76B90  41 82 00 38 */	beq lbl_80B76BC8
/* 80B76B94  40 80 01 B4 */	bge lbl_80B76D48
/* 80B76B98  2C 00 00 00 */	cmpwi r0, 0
/* 80B76B9C  40 80 00 0C */	bge lbl_80B76BA8
/* 80B76BA0  48 00 01 A8 */	b lbl_80B76D48
/* 80B76BA4  48 00 01 A4 */	b lbl_80B76D48
lbl_80B76BA8:
/* 80B76BA8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B76BAC  2C 00 00 00 */	cmpwi r0, 0
/* 80B76BB0  40 82 00 18 */	bne lbl_80B76BC8
/* 80B76BB4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 80B76BB8  38 A0 00 00 */	li r5, 0
/* 80B76BBC  4B 5D 50 35 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B76BC0  38 00 00 02 */	li r0, 2
/* 80B76BC4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B76BC8:
/* 80B76BC8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B76BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80B76BD0  40 82 01 78 */	bne lbl_80B76D48
/* 80B76BD4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B76BD8  28 00 00 00 */	cmplwi r0, 0
/* 80B76BDC  40 82 00 20 */	bne lbl_80B76BFC
/* 80B76BE0  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 80B76BE4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B76BE8  7C 03 00 00 */	cmpw r3, r0
/* 80B76BEC  41 82 00 10 */	beq lbl_80B76BFC
/* 80B76BF0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B76BF4  28 00 00 00 */	cmplwi r0, 0
/* 80B76BF8  40 82 00 F8 */	bne lbl_80B76CF0
lbl_80B76BFC:
/* 80B76BFC  7F E3 FB 78 */	mr r3, r31
/* 80B76C00  38 80 00 00 */	li r4, 0
/* 80B76C04  38 A0 00 00 */	li r5, 0
/* 80B76C08  38 C0 00 00 */	li r6, 0
/* 80B76C0C  38 E0 00 00 */	li r7, 0
/* 80B76C10  4B 5D 50 69 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B76C14  2C 03 00 00 */	cmpwi r3, 0
/* 80B76C18  41 82 00 48 */	beq lbl_80B76C60
/* 80B76C1C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B76C20  38 81 00 08 */	addi r4, r1, 8
/* 80B76C24  4B 6D 39 05 */	bl getEventId__10dMsgFlow_cFPi
/* 80B76C28  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 80B76C2C  28 00 00 01 */	cmplwi r0, 1
/* 80B76C30  40 82 00 30 */	bne lbl_80B76C60
/* 80B76C34  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B76C38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B76C3C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B76C40  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B76C44  4B 5C EA 9D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B76C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B76C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B76C50  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B76C54  4B 4C B8 15 */	bl reset__14dEvt_control_cFv
/* 80B76C58  38 00 00 03 */	li r0, 3
/* 80B76C5C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B76C60:
/* 80B76C60  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B76C64  2C 00 00 01 */	cmpwi r0, 1
/* 80B76C68  41 82 00 2C */	beq lbl_80B76C94
/* 80B76C6C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76C70  4B 5C EA 8D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B76C74  38 00 00 00 */	li r0, 0
/* 80B76C78  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76C7C  3C 60 80 B8 */	lis r3, lit_4190@ha /* 0x80B78070@ha */
/* 80B76C80  C0 03 80 70 */	lfs f0, lit_4190@l(r3)  /* 0x80B78070@l */
/* 80B76C84  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76C88  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76C8C  38 00 00 01 */	li r0, 1
/* 80B76C90  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76C94:
/* 80B76C94  38 00 00 00 */	li r0, 0
/* 80B76C98  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76C9C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B76CA0  28 00 00 00 */	cmplwi r0, 0
/* 80B76CA4  40 82 00 10 */	bne lbl_80B76CB4
/* 80B76CA8  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B76CAC  28 00 00 00 */	cmplwi r0, 0
/* 80B76CB0  40 82 00 98 */	bne lbl_80B76D48
lbl_80B76CB4:
/* 80B76CB4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B76CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B76CBC  41 82 00 28 */	beq lbl_80B76CE4
/* 80B76CC0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76CC4  4B 5C EA 39 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B76CC8  38 00 00 00 */	li r0, 0
/* 80B76CCC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76CD0  3C 60 80 B8 */	lis r3, lit_4190@ha /* 0x80B78070@ha */
/* 80B76CD4  C0 03 80 70 */	lfs f0, lit_4190@l(r3)  /* 0x80B78070@l */
/* 80B76CD8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76CDC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76CE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76CE4:
/* 80B76CE4  38 00 00 00 */	li r0, 0
/* 80B76CE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76CEC  48 00 00 5C */	b lbl_80B76D48
lbl_80B76CF0:
/* 80B76CF0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B76CF4  2C 00 00 01 */	cmpwi r0, 1
/* 80B76CF8  41 82 00 2C */	beq lbl_80B76D24
/* 80B76CFC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76D00  4B 5C E9 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B76D04  38 00 00 00 */	li r0, 0
/* 80B76D08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76D0C  3C 60 80 B8 */	lis r3, lit_4190@ha /* 0x80B78070@ha */
/* 80B76D10  C0 03 80 70 */	lfs f0, lit_4190@l(r3)  /* 0x80B78070@l */
/* 80B76D14  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76D18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76D1C  38 00 00 01 */	li r0, 1
/* 80B76D20  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76D24:
/* 80B76D24  38 00 00 00 */	li r0, 0
/* 80B76D28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76D2C  7F E3 FB 78 */	mr r3, r31
/* 80B76D30  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80B76D34  38 A0 FF FF */	li r5, -1
/* 80B76D38  38 C0 FF FF */	li r6, -1
/* 80B76D3C  38 E0 00 0F */	li r7, 0xf
/* 80B76D40  39 00 00 00 */	li r8, 0
/* 80B76D44  4B 5D 49 05 */	bl step__8daNpcT_cFsiiii
lbl_80B76D48:
/* 80B76D48  38 60 00 00 */	li r3, 0
/* 80B76D4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B76D50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B76D54  7C 08 03 A6 */	mtlr r0
/* 80B76D58  38 21 00 20 */	addi r1, r1, 0x20
/* 80B76D5C  4E 80 00 20 */	blr 
