lbl_80B5BE08:
/* 80B5BE08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5BE0C  7C 08 02 A6 */	mflr r0
/* 80B5BE10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5BE14  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5BE18  4B 80 63 C5 */	bl _savegpr_29
/* 80B5BE1C  7C 7E 1B 78 */	mr r30, r3
/* 80B5BE20  3C 80 80 B6 */	lis r4, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B5BE24  3B E4 D7 94 */	addi r31, r4, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B5BE28  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B5BE2C  2C 00 00 02 */	cmpwi r0, 2
/* 80B5BE30  41 82 00 CC */	beq lbl_80B5BEFC
/* 80B5BE34  40 80 02 74 */	bge lbl_80B5C0A8
/* 80B5BE38  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BE3C  40 80 00 0C */	bge lbl_80B5BE48
/* 80B5BE40  48 00 02 68 */	b lbl_80B5C0A8
/* 80B5BE44  48 00 02 64 */	b lbl_80B5C0A8
lbl_80B5BE48:
/* 80B5BE48  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B5BE4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BE50  40 82 00 AC */	bne lbl_80B5BEFC
/* 80B5BE54  80 9E 0A 7C */	lwz r4, 0xa7c(r30)
/* 80B5BE58  38 A0 00 00 */	li r5, 0
/* 80B5BE5C  4B 5E FD 95 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B5BE60  38 00 00 00 */	li r0, 0
/* 80B5BE64  98 1E 15 7F */	stb r0, 0x157f(r30)
/* 80B5BE68  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B5BE6C  28 00 00 01 */	cmplwi r0, 1
/* 80B5BE70  40 82 00 84 */	bne lbl_80B5BEF4
/* 80B5BE74  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B5BE78  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5BE7C  41 82 00 24 */	beq lbl_80B5BEA0
/* 80B5BE80  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B5BE84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B5BE88  4B 5E 9A 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BE8C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B5BE90  38 00 00 0F */	li r0, 0xf
/* 80B5BE94  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B5BE98  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5BE9C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B5BEA0:
/* 80B5BEA0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B5BEA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BEA8  41 82 00 24 */	beq lbl_80B5BECC
/* 80B5BEAC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B5BEB0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B5BEB4  4B 5E 99 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BEB8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B5BEBC  38 00 00 00 */	li r0, 0
/* 80B5BEC0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B5BEC4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5BEC8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B5BECC:
/* 80B5BECC  38 60 00 0A */	li r3, 0xa
/* 80B5BED0  4B 5F 0B DD */	bl daNpcT_chkEvtBit__FUl
/* 80B5BED4  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BED8  41 82 00 1C */	beq lbl_80B5BEF4
/* 80B5BEDC  7F C3 F3 78 */	mr r3, r30
/* 80B5BEE0  4B FF AB 49 */	bl chkContinueAttnPlayer__11daNpc_ykM_cFv
/* 80B5BEE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BEE8  40 82 00 0C */	bne lbl_80B5BEF4
/* 80B5BEEC  38 00 00 01 */	li r0, 1
/* 80B5BEF0  98 1E 15 7F */	stb r0, 0x157f(r30)
lbl_80B5BEF4:
/* 80B5BEF4  38 00 00 02 */	li r0, 2
/* 80B5BEF8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B5BEFC:
/* 80B5BEFC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B5BF00  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BF04  40 82 01 A4 */	bne lbl_80B5C0A8
/* 80B5BF08  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B5BF0C  28 00 00 00 */	cmplwi r0, 0
/* 80B5BF10  40 82 00 28 */	bne lbl_80B5BF38
/* 80B5BF14  A8 7E 0D C8 */	lha r3, 0xdc8(r30)
/* 80B5BF18  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B5BF1C  7C 03 00 00 */	cmpw r3, r0
/* 80B5BF20  41 82 00 18 */	beq lbl_80B5BF38
/* 80B5BF24  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B5BF28  28 00 00 01 */	cmplwi r0, 1
/* 80B5BF2C  41 82 00 0C */	beq lbl_80B5BF38
/* 80B5BF30  28 00 00 02 */	cmplwi r0, 2
/* 80B5BF34  40 82 01 1C */	bne lbl_80B5C050
lbl_80B5BF38:
/* 80B5BF38  7F C3 F3 78 */	mr r3, r30
/* 80B5BF3C  38 80 00 00 */	li r4, 0
/* 80B5BF40  38 A0 00 00 */	li r5, 0
/* 80B5BF44  38 C0 00 00 */	li r6, 0
/* 80B5BF48  38 E0 00 00 */	li r7, 0
/* 80B5BF4C  4B 5E FD 2D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B5BF50  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BF54  41 82 00 74 */	beq lbl_80B5BFC8
/* 80B5BF58  38 00 00 00 */	li r0, 0
/* 80B5BF5C  98 1E 15 83 */	stb r0, 0x1583(r30)
/* 80B5BF60  38 7E 09 74 */	addi r3, r30, 0x974
/* 80B5BF64  38 81 00 08 */	addi r4, r1, 8
/* 80B5BF68  4B 6E E5 C1 */	bl getEventId__10dMsgFlow_cFPi
/* 80B5BF6C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B5BF70  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B5BF74  41 82 00 08 */	beq lbl_80B5BF7C
/* 80B5BF78  48 00 00 18 */	b lbl_80B5BF90
lbl_80B5BF7C:
/* 80B5BF7C  38 00 00 07 */	li r0, 7
/* 80B5BF80  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80B5BF84  7F C3 F3 78 */	mr r3, r30
/* 80B5BF88  4B 5E E2 9D */	bl evtChange__8daNpcT_cFv
/* 80B5BF8C  48 00 00 3C */	b lbl_80B5BFC8
lbl_80B5BF90:
/* 80B5BF90  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 80B5BF94  28 00 00 01 */	cmplwi r0, 1
/* 80B5BF98  40 82 00 30 */	bne lbl_80B5BFC8
/* 80B5BF9C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B5BFA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5BFA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5BFA8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B5BFAC  4B 5E 97 35 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B5BFB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5BFB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5BFB8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B5BFBC  4B 4E 64 AD */	bl reset__14dEvt_control_cFv
/* 80B5BFC0  38 00 00 03 */	li r0, 3
/* 80B5BFC4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B5BFC8:
/* 80B5BFC8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B5BFCC  2C 00 00 01 */	cmpwi r0, 1
/* 80B5BFD0  41 82 00 28 */	beq lbl_80B5BFF8
/* 80B5BFD4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B5BFD8  4B 5E 97 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5BFDC  38 00 00 00 */	li r0, 0
/* 80B5BFE0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B5BFE4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5BFE8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B5BFEC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5BFF0  38 00 00 01 */	li r0, 1
/* 80B5BFF4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B5BFF8:
/* 80B5BFF8  38 00 00 00 */	li r0, 0
/* 80B5BFFC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5C000  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B5C004  28 00 00 00 */	cmplwi r0, 0
/* 80B5C008  40 82 00 10 */	bne lbl_80B5C018
/* 80B5C00C  88 1E 15 7F */	lbz r0, 0x157f(r30)
/* 80B5C010  28 00 00 00 */	cmplwi r0, 0
/* 80B5C014  41 82 00 94 */	beq lbl_80B5C0A8
lbl_80B5C018:
/* 80B5C018  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B5C01C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5C020  41 82 00 24 */	beq lbl_80B5C044
/* 80B5C024  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B5C028  4B 5E 96 D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5C02C  38 00 00 00 */	li r0, 0
/* 80B5C030  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B5C034  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5C038  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B5C03C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5C040  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B5C044:
/* 80B5C044  38 00 00 00 */	li r0, 0
/* 80B5C048  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5C04C  48 00 00 5C */	b lbl_80B5C0A8
lbl_80B5C050:
/* 80B5C050  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B5C054  2C 00 00 01 */	cmpwi r0, 1
/* 80B5C058  41 82 00 28 */	beq lbl_80B5C080
/* 80B5C05C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B5C060  4B 5E 96 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B5C064  38 00 00 00 */	li r0, 0
/* 80B5C068  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B5C06C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5C070  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B5C074  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5C078  38 00 00 01 */	li r0, 1
/* 80B5C07C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B5C080:
/* 80B5C080  38 00 00 00 */	li r0, 0
/* 80B5C084  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B5C088  7F C3 F3 78 */	mr r3, r30
/* 80B5C08C  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80B5C090  38 A0 00 0F */	li r5, 0xf
/* 80B5C094  38 C0 00 1E */	li r6, 0x1e
/* 80B5C098  38 FF 00 00 */	addi r7, r31, 0
/* 80B5C09C  A8 E7 00 8C */	lha r7, 0x8c(r7)
/* 80B5C0A0  39 00 00 00 */	li r8, 0
/* 80B5C0A4  4B 5E F5 A5 */	bl step__8daNpcT_cFsiiii
lbl_80B5C0A8:
/* 80B5C0A8  38 60 00 00 */	li r3, 0
/* 80B5C0AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5C0B0  4B 80 61 79 */	bl _restgpr_29
/* 80B5C0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5C0B8  7C 08 03 A6 */	mtlr r0
/* 80B5C0BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5C0C0  4E 80 00 20 */	blr 
