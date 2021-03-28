lbl_809FC80C:
/* 809FC80C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809FC810  7C 08 02 A6 */	mflr r0
/* 809FC814  90 01 00 54 */	stw r0, 0x54(r1)
/* 809FC818  39 61 00 50 */	addi r11, r1, 0x50
/* 809FC81C  4B 96 59 AC */	b _savegpr_24
/* 809FC820  7C 7C 1B 78 */	mr r28, r3
/* 809FC824  7C 98 23 78 */	mr r24, r4
/* 809FC828  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FC82C  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FC830  3B C0 00 00 */	li r30, 0
/* 809FC834  3B A0 FF FF */	li r29, -1
/* 809FC838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FC83C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 809FC840  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 809FC844  7F 43 D3 78 */	mr r3, r26
/* 809FC848  3C A0 80 A0 */	lis r5, struct_80A007F8+0x0@ha
/* 809FC84C  38 A5 07 F8 */	addi r5, r5, struct_80A007F8+0x0@l
/* 809FC850  38 A5 01 1D */	addi r5, r5, 0x11d
/* 809FC854  38 C0 00 03 */	li r6, 3
/* 809FC858  4B 64 B8 94 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809FC85C  28 03 00 00 */	cmplwi r3, 0
/* 809FC860  41 82 00 08 */	beq lbl_809FC868
/* 809FC864  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809FC868:
/* 809FC868  7F 43 D3 78 */	mr r3, r26
/* 809FC86C  7F 04 C3 78 */	mr r4, r24
/* 809FC870  4B 64 B4 DC */	b getIsAddvance__16dEvent_manager_cFi
/* 809FC874  2C 03 00 00 */	cmpwi r3, 0
/* 809FC878  41 82 02 40 */	beq lbl_809FCAB8
/* 809FC87C  2C 1D 00 04 */	cmpwi r29, 4
/* 809FC880  41 82 01 A4 */	beq lbl_809FCA24
/* 809FC884  40 80 00 28 */	bge lbl_809FC8AC
/* 809FC888  2C 1D 00 01 */	cmpwi r29, 1
/* 809FC88C  41 82 01 00 */	beq lbl_809FC98C
/* 809FC890  40 80 00 10 */	bge lbl_809FC8A0
/* 809FC894  2C 1D 00 00 */	cmpwi r29, 0
/* 809FC898  40 80 00 24 */	bge lbl_809FC8BC
/* 809FC89C  48 00 02 1C */	b lbl_809FCAB8
lbl_809FC8A0:
/* 809FC8A0  2C 1D 00 03 */	cmpwi r29, 3
/* 809FC8A4  40 80 00 F4 */	bge lbl_809FC998
/* 809FC8A8  48 00 02 10 */	b lbl_809FCAB8
lbl_809FC8AC:
/* 809FC8AC  2C 1D 00 63 */	cmpwi r29, 0x63
/* 809FC8B0  41 82 01 88 */	beq lbl_809FCA38
/* 809FC8B4  40 80 02 04 */	bge lbl_809FCAB8
/* 809FC8B8  48 00 02 00 */	b lbl_809FCAB8
lbl_809FC8BC:
/* 809FC8BC  7F 83 E3 78 */	mr r3, r28
/* 809FC8C0  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809FC8C4  4B 74 E1 54 */	b setAngle__8daNpcT_cFs
/* 809FC8C8  38 7C 10 C8 */	addi r3, r28, 0x10c8
/* 809FC8CC  4B 74 8E 3C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FC8D0  7C 64 1B 78 */	mr r4, r3
/* 809FC8D4  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809FC8D8  4B 64 6D 84 */	b setPt2__14dEvt_control_cFPv
/* 809FC8DC  38 60 00 00 */	li r3, 0
/* 809FC8E0  38 00 00 04 */	li r0, 4
/* 809FC8E4  7C 09 03 A6 */	mtctr r0
lbl_809FC8E8:
/* 809FC8E8  7C BC 1A 14 */	add r5, r28, r3
/* 809FC8EC  80 05 11 10 */	lwz r0, 0x1110(r5)
/* 809FC8F0  28 00 00 00 */	cmplwi r0, 0
/* 809FC8F4  41 82 00 18 */	beq lbl_809FC90C
/* 809FC8F8  80 85 12 80 */	lwz r4, 0x1280(r5)
/* 809FC8FC  30 04 FF FF */	addic r0, r4, -1
/* 809FC900  7C 00 21 10 */	subfe r0, r0, r4
/* 809FC904  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809FC908  48 00 00 08 */	b lbl_809FC910
lbl_809FC90C:
/* 809FC90C  38 00 00 00 */	li r0, 0
lbl_809FC910:
/* 809FC910  2C 00 00 00 */	cmpwi r0, 0
/* 809FC914  41 82 00 58 */	beq lbl_809FC96C
/* 809FC918  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FC91C  D0 25 11 20 */	stfs f1, 0x1120(r5)
/* 809FC920  D0 25 11 24 */	stfs f1, 0x1124(r5)
/* 809FC924  D0 25 11 28 */	stfs f1, 0x1128(r5)
/* 809FC928  C0 05 11 20 */	lfs f0, 0x1120(r5)
/* 809FC92C  D0 05 11 14 */	stfs f0, 0x1114(r5)
/* 809FC930  C0 05 11 24 */	lfs f0, 0x1124(r5)
/* 809FC934  D0 05 11 18 */	stfs f0, 0x1118(r5)
/* 809FC938  C0 05 11 28 */	lfs f0, 0x1128(r5)
/* 809FC93C  D0 05 11 1C */	stfs f0, 0x111c(r5)
/* 809FC940  D0 25 11 2C */	stfs f1, 0x112c(r5)
/* 809FC944  D0 25 11 30 */	stfs f1, 0x1130(r5)
/* 809FC948  D0 25 11 34 */	stfs f1, 0x1134(r5)
/* 809FC94C  38 00 00 00 */	li r0, 0
/* 809FC950  B0 05 11 38 */	sth r0, 0x1138(r5)
/* 809FC954  B0 05 11 3A */	sth r0, 0x113a(r5)
/* 809FC958  B0 05 11 3C */	sth r0, 0x113c(r5)
/* 809FC95C  D0 25 12 78 */	stfs f1, 0x1278(r5)
/* 809FC960  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 809FC964  D0 05 12 7C */	stfs f0, 0x127c(r5)
/* 809FC968  90 05 12 80 */	stw r0, 0x1280(r5)
lbl_809FC96C:
/* 809FC96C  38 63 01 74 */	addi r3, r3, 0x174
/* 809FC970  42 00 FF 78 */	bdnz lbl_809FC8E8
/* 809FC974  7F 83 E3 78 */	mr r3, r28
/* 809FC978  38 80 00 01 */	li r4, 1
/* 809FC97C  4B FF EE 25 */	bl initShoot__13daNpc_Hanjo_cFi
/* 809FC980  38 00 FF FF */	li r0, -1
/* 809FC984  90 1C 17 0C */	stw r0, 0x170c(r28)
/* 809FC988  48 00 01 30 */	b lbl_809FCAB8
lbl_809FC98C:
/* 809FC98C  38 00 00 00 */	li r0, 0
/* 809FC990  90 1C 0D C4 */	stw r0, 0xdc4(r28)
/* 809FC994  48 00 01 24 */	b lbl_809FCAB8
lbl_809FC998:
/* 809FC998  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 809FC99C  2C 00 00 06 */	cmpwi r0, 6
/* 809FC9A0  41 82 00 24 */	beq lbl_809FC9C4
/* 809FC9A4  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 809FC9A8  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 809FC9AC  4B 74 8E EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC9B0  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 809FC9B4  38 00 00 06 */	li r0, 6
/* 809FC9B8  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 809FC9BC  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC9C0  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_809FC9C4:
/* 809FC9C4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 809FC9C8  2C 00 00 11 */	cmpwi r0, 0x11
/* 809FC9CC  41 82 00 24 */	beq lbl_809FC9F0
/* 809FC9D0  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 809FC9D4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 809FC9D8  4B 74 8E C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FC9DC  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 809FC9E0  38 00 00 11 */	li r0, 0x11
/* 809FC9E4  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 809FC9E8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FC9EC  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_809FC9F0:
/* 809FC9F0  38 00 00 01 */	li r0, 1
/* 809FC9F4  90 1C 0D C4 */	stw r0, 0xdc4(r28)
/* 809FC9F8  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050073@ha */
/* 809FC9FC  38 03 00 73 */	addi r0, r3, 0x0073 /* 0x00050073@l */
/* 809FCA00  90 01 00 08 */	stw r0, 8(r1)
/* 809FCA04  38 7C 05 80 */	addi r3, r28, 0x580
/* 809FCA08  38 81 00 08 */	addi r4, r1, 8
/* 809FCA0C  38 A0 FF FF */	li r5, -1
/* 809FCA10  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 809FCA14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809FCA18  7D 89 03 A6 */	mtctr r12
/* 809FCA1C  4E 80 04 21 */	bctrl 
/* 809FCA20  48 00 00 98 */	b lbl_809FCAB8
lbl_809FCA24:
/* 809FCA24  38 00 00 00 */	li r0, 0
/* 809FCA28  98 1C 17 24 */	stb r0, 0x1724(r28)
/* 809FCA2C  7F 83 E3 78 */	mr r3, r28
/* 809FCA30  4B FF F1 65 */	bl initDive__13daNpc_Hanjo_cFv
/* 809FCA34  48 00 00 84 */	b lbl_809FCAB8
lbl_809FCA38:
/* 809FCA38  C0 5F 01 C0 */	lfs f2, 0x1c0(r31)
/* 809FCA3C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 809FCA40  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 809FCA44  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 809FCA48  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 809FCA4C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809FCA50  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 809FCA54  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809FCA58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809FCA5C  7F 83 E3 78 */	mr r3, r28
/* 809FCA60  38 81 00 18 */	addi r4, r1, 0x18
/* 809FCA64  4B 74 DE A4 */	b setPos__8daNpcT_cF4cXyz
/* 809FCA68  7F 83 E3 78 */	mr r3, r28
/* 809FCA6C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 809FCA70  4B 74 DF A8 */	b setAngle__8daNpcT_cFs
/* 809FCA74  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FCA78  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 809FCA7C  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 809FCA80  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 809FCA84  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 809FCA88  38 00 00 01 */	li r0, 1
/* 809FCA8C  98 1C 17 1F */	stb r0, 0x171f(r28)
/* 809FCA90  98 1C 17 20 */	stb r0, 0x1720(r28)
/* 809FCA94  98 1C 17 21 */	stb r0, 0x1721(r28)
/* 809FCA98  38 60 00 AD */	li r3, 0xad
/* 809FCA9C  4B 74 FF 90 */	b daNpcT_onEvtBit__FUl
/* 809FCAA0  38 60 00 B1 */	li r3, 0xb1
/* 809FCAA4  4B 74 FF 88 */	b daNpcT_onEvtBit__FUl
/* 809FCAA8  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 809FCAAC  D0 1C 17 18 */	stfs f0, 0x1718(r28)
/* 809FCAB0  38 7C 09 74 */	addi r3, r28, 0x974
/* 809FCAB4  4B 84 DA 10 */	b remove__10dMsgFlow_cFv
lbl_809FCAB8:
/* 809FCAB8  2C 1D 00 04 */	cmpwi r29, 4
/* 809FCABC  41 82 02 B4 */	beq lbl_809FCD70
/* 809FCAC0  40 80 00 28 */	bge lbl_809FCAE8
/* 809FCAC4  2C 1D 00 01 */	cmpwi r29, 1
/* 809FCAC8  41 82 00 54 */	beq lbl_809FCB1C
/* 809FCACC  40 80 00 10 */	bge lbl_809FCADC
/* 809FCAD0  2C 1D 00 00 */	cmpwi r29, 0
/* 809FCAD4  40 80 00 2C */	bge lbl_809FCB00
/* 809FCAD8  48 00 02 D0 */	b lbl_809FCDA8
lbl_809FCADC:
/* 809FCADC  2C 1D 00 03 */	cmpwi r29, 3
/* 809FCAE0  40 80 01 1C */	bge lbl_809FCBFC
/* 809FCAE4  48 00 01 00 */	b lbl_809FCBE4
lbl_809FCAE8:
/* 809FCAE8  2C 1D 00 63 */	cmpwi r29, 0x63
/* 809FCAEC  41 82 02 B8 */	beq lbl_809FCDA4
/* 809FCAF0  40 80 02 B8 */	bge lbl_809FCDA8
/* 809FCAF4  2C 1D 00 06 */	cmpwi r29, 6
/* 809FCAF8  40 80 02 B0 */	bge lbl_809FCDA8
/* 809FCAFC  48 00 02 A0 */	b lbl_809FCD9C
lbl_809FCB00:
/* 809FCB00  7F 83 E3 78 */	mr r3, r28
/* 809FCB04  38 80 00 01 */	li r4, 1
/* 809FCB08  4B FF EE 05 */	bl shoot__13daNpc_Hanjo_cFi
/* 809FCB0C  2C 03 00 00 */	cmpwi r3, 0
/* 809FCB10  41 82 02 98 */	beq lbl_809FCDA8
/* 809FCB14  3B C0 00 01 */	li r30, 1
/* 809FCB18  48 00 02 90 */	b lbl_809FCDA8
lbl_809FCB1C:
/* 809FCB1C  80 1C 0D C4 */	lwz r0, 0xdc4(r28)
/* 809FCB20  2C 00 00 00 */	cmpwi r0, 0
/* 809FCB24  41 82 00 0C */	beq lbl_809FCB30
/* 809FCB28  3B C0 00 01 */	li r30, 1
/* 809FCB2C  48 00 02 7C */	b lbl_809FCDA8
lbl_809FCB30:
/* 809FCB30  3B 00 00 00 */	li r24, 0
/* 809FCB34  3B A0 00 00 */	li r29, 0
/* 809FCB38  3B 7F 00 00 */	addi r27, r31, 0
lbl_809FCB3C:
/* 809FCB3C  7F 3C EA 14 */	add r25, r28, r29
/* 809FCB40  3B 59 11 40 */	addi r26, r25, 0x1140
/* 809FCB44  7F 43 D3 78 */	mr r3, r26
/* 809FCB48  4B 68 7B 10 */	b ChkCoHit__12dCcD_GObjInfFv
/* 809FCB4C  28 03 00 00 */	cmplwi r3, 0
/* 809FCB50  41 82 00 80 */	beq lbl_809FCBD0
/* 809FCB54  7F 43 D3 78 */	mr r3, r26
/* 809FCB58  4B 68 7B 98 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 809FCB5C  4B 86 6E EC */	b GetAc__8cCcD_ObjFv
/* 809FCB60  28 03 00 00 */	cmplwi r3, 0
/* 809FCB64  41 82 00 18 */	beq lbl_809FCB7C
/* 809FCB68  A8 03 00 08 */	lha r0, 8(r3)
/* 809FCB6C  2C 00 01 E8 */	cmpwi r0, 0x1e8
/* 809FCB70  40 82 00 0C */	bne lbl_809FCB7C
/* 809FCB74  A8 1B 00 B0 */	lha r0, 0xb0(r27)
/* 809FCB78  90 1C 0D C4 */	stw r0, 0xdc4(r28)
lbl_809FCB7C:
/* 809FCB7C  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809FCB80  D0 39 11 20 */	stfs f1, 0x1120(r25)
/* 809FCB84  D0 39 11 24 */	stfs f1, 0x1124(r25)
/* 809FCB88  D0 39 11 28 */	stfs f1, 0x1128(r25)
/* 809FCB8C  C0 19 11 20 */	lfs f0, 0x1120(r25)
/* 809FCB90  D0 19 11 14 */	stfs f0, 0x1114(r25)
/* 809FCB94  C0 19 11 24 */	lfs f0, 0x1124(r25)
/* 809FCB98  D0 19 11 18 */	stfs f0, 0x1118(r25)
/* 809FCB9C  C0 19 11 28 */	lfs f0, 0x1128(r25)
/* 809FCBA0  D0 19 11 1C */	stfs f0, 0x111c(r25)
/* 809FCBA4  D0 39 11 2C */	stfs f1, 0x112c(r25)
/* 809FCBA8  D0 39 11 30 */	stfs f1, 0x1130(r25)
/* 809FCBAC  D0 39 11 34 */	stfs f1, 0x1134(r25)
/* 809FCBB0  38 00 00 00 */	li r0, 0
/* 809FCBB4  B0 19 11 38 */	sth r0, 0x1138(r25)
/* 809FCBB8  B0 19 11 3A */	sth r0, 0x113a(r25)
/* 809FCBBC  B0 19 11 3C */	sth r0, 0x113c(r25)
/* 809FCBC0  D0 39 12 78 */	stfs f1, 0x1278(r25)
/* 809FCBC4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 809FCBC8  D0 19 12 7C */	stfs f0, 0x127c(r25)
/* 809FCBCC  90 19 12 80 */	stw r0, 0x1280(r25)
lbl_809FCBD0:
/* 809FCBD0  3B 18 00 01 */	addi r24, r24, 1
/* 809FCBD4  2C 18 00 04 */	cmpwi r24, 4
/* 809FCBD8  3B BD 01 74 */	addi r29, r29, 0x174
/* 809FCBDC  41 80 FF 60 */	blt lbl_809FCB3C
/* 809FCBE0  48 00 01 C8 */	b lbl_809FCDA8
lbl_809FCBE4:
/* 809FCBE4  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 809FCBE8  48 00 32 85 */	bl func_809FFE6C
/* 809FCBEC  2C 03 00 00 */	cmpwi r3, 0
/* 809FCBF0  40 82 01 B8 */	bne lbl_809FCDA8
/* 809FCBF4  3B C0 00 01 */	li r30, 1
/* 809FCBF8  48 00 01 B0 */	b lbl_809FCDA8
lbl_809FCBFC:
/* 809FCBFC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 809FCC00  2C 00 00 00 */	cmpwi r0, 0
/* 809FCC04  41 82 00 24 */	beq lbl_809FCC28
/* 809FCC08  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 809FCC0C  4B 74 8A F0 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FCC10  38 00 00 00 */	li r0, 0
/* 809FCC14  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 809FCC18  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FCC1C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 809FCC20  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 809FCC24  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_809FCC28:
/* 809FCC28  38 00 00 00 */	li r0, 0
/* 809FCC2C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 809FCC30  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 809FCC34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809FCC38  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 809FCC3C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FCC40  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 809FCC44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FCC48  38 7C 10 E8 */	addi r3, r28, 0x10e8
/* 809FCC4C  38 81 00 0C */	addi r4, r1, 0xc
/* 809FCC50  38 A1 00 24 */	addi r5, r1, 0x24
/* 809FCC54  80 DC 10 E8 */	lwz r6, 0x10e8(r28)
/* 809FCC58  A0 C6 00 00 */	lhz r6, 0(r6)
/* 809FCC5C  38 E0 00 04 */	li r7, 4
/* 809FCC60  4B 74 93 54 */	b getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 809FCC64  2C 03 00 00 */	cmpwi r3, 0
/* 809FCC68  41 82 00 0C */	beq lbl_809FCC74
/* 809FCC6C  3B C0 00 01 */	li r30, 1
/* 809FCC70  48 00 01 38 */	b lbl_809FCDA8
lbl_809FCC74:
/* 809FCC74  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 809FCC78  38 81 00 24 */	addi r4, r1, 0x24
/* 809FCC7C  4B 87 3F 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809FCC80  7C 64 1B 78 */	mr r4, r3
/* 809FCC84  38 7C 04 DE */	addi r3, r28, 0x4de
/* 809FCC88  38 A0 00 04 */	li r5, 4
/* 809FCC8C  38 C0 08 00 */	li r6, 0x800
/* 809FCC90  4B 87 39 78 */	b cLib_addCalcAngleS2__FPssss
/* 809FCC94  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809FCC98  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 809FCC9C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 809FCCA0  B0 1C 0D 7A */	sth r0, 0xd7a(r28)
/* 809FCCA4  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 809FCCA8  B0 1C 0D 80 */	sth r0, 0xd80(r28)
/* 809FCCAC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 809FCCB0  38 9F 00 00 */	addi r4, r31, 0
/* 809FCCB4  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 809FCCB8  C0 5F 01 A0 */	lfs f2, 0x1a0(r31)
/* 809FCCBC  4B 87 3A 84 */	b cLib_chaseF__FPfff
/* 809FCCC0  80 1C 0D C4 */	lwz r0, 0xdc4(r28)
/* 809FCCC4  2C 00 00 00 */	cmpwi r0, 0
/* 809FCCC8  41 82 00 E0 */	beq lbl_809FCDA8
/* 809FCCCC  38 7C 0E 4C */	addi r3, r28, 0xe4c
/* 809FCCD0  4B 68 79 88 */	b ChkCoHit__12dCcD_GObjInfFv
/* 809FCCD4  28 03 00 00 */	cmplwi r3, 0
/* 809FCCD8  41 82 00 D0 */	beq lbl_809FCDA8
/* 809FCCDC  38 7C 0F 34 */	addi r3, r28, 0xf34
/* 809FCCE0  4B 68 69 A8 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 809FCCE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809FCCE8  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 809FCCEC  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 809FCCF0  7C 04 18 40 */	cmplw r4, r3
/* 809FCCF4  40 82 00 B4 */	bne lbl_809FCDA8
/* 809FCCF8  7F 83 E3 78 */	mr r3, r28
/* 809FCCFC  4B 61 DA 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809FCD00  A8 BC 04 DE */	lha r5, 0x4de(r28)
/* 809FCD04  7C 05 18 50 */	subf r0, r5, r3
/* 809FCD08  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FCD0C  7C 00 07 35 */	extsh. r0, r0
/* 809FCD10  38 05 E0 00 */	addi r0, r5, -8192
/* 809FCD14  7C 04 07 34 */	extsh r4, r0
/* 809FCD18  40 81 00 0C */	ble lbl_809FCD24
/* 809FCD1C  38 05 20 00 */	addi r0, r5, 0x2000
/* 809FCD20  7C 04 07 34 */	extsh r4, r0
lbl_809FCD24:
/* 809FCD24  C0 5F 01 70 */	lfs f2, 0x170(r31)
/* 809FCD28  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 809FCD2C  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 809FCD30  C0 05 23 8C */	lfs f0, 0x238c(r5)
/* 809FCD34  EC 22 00 32 */	fmuls f1, f2, f0
/* 809FCD38  C0 05 23 88 */	lfs f0, 0x2388(r5)
/* 809FCD3C  EC 42 00 32 */	fmuls f2, f2, f0
/* 809FCD40  38 A0 00 00 */	li r5, 0
/* 809FCD44  38 C0 00 01 */	li r6, 1
/* 809FCD48  38 E0 00 00 */	li r7, 0
/* 809FCD4C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FCD50  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 809FCD54  7D 89 03 A6 */	mtctr r12
/* 809FCD58  4E 80 04 21 */	bctrl 
/* 809FCD5C  38 00 00 01 */	li r0, 1
/* 809FCD60  98 1C 17 24 */	stb r0, 0x1724(r28)
/* 809FCD64  38 00 00 00 */	li r0, 0
/* 809FCD68  90 1C 0D C4 */	stw r0, 0xdc4(r28)
/* 809FCD6C  48 00 00 3C */	b lbl_809FCDA8
lbl_809FCD70:
/* 809FCD70  88 1C 17 1F */	lbz r0, 0x171f(r28)
/* 809FCD74  28 00 00 00 */	cmplwi r0, 0
/* 809FCD78  41 82 00 30 */	beq lbl_809FCDA8
/* 809FCD7C  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 809FCD80  D0 1C 17 18 */	stfs f0, 0x1718(r28)
/* 809FCD84  38 60 00 AD */	li r3, 0xad
/* 809FCD88  4B 74 FC A4 */	b daNpcT_onEvtBit__FUl
/* 809FCD8C  38 60 00 B1 */	li r3, 0xb1
/* 809FCD90  4B 74 FC 9C */	b daNpcT_onEvtBit__FUl
/* 809FCD94  3B C0 00 01 */	li r30, 1
/* 809FCD98  48 00 00 10 */	b lbl_809FCDA8
lbl_809FCD9C:
/* 809FCD9C  3B C0 00 01 */	li r30, 1
/* 809FCDA0  48 00 00 08 */	b lbl_809FCDA8
lbl_809FCDA4:
/* 809FCDA4  3B C0 00 01 */	li r30, 1
lbl_809FCDA8:
/* 809FCDA8  7F C3 F3 78 */	mr r3, r30
/* 809FCDAC  39 61 00 50 */	addi r11, r1, 0x50
/* 809FCDB0  4B 96 54 64 */	b _restgpr_24
/* 809FCDB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809FCDB8  7C 08 03 A6 */	mtlr r0
/* 809FCDBC  38 21 00 50 */	addi r1, r1, 0x50
/* 809FCDC0  4E 80 00 20 */	blr 
