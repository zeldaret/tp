lbl_809FD86C:
/* 809FD86C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809FD870  7C 08 02 A6 */	mflr r0
/* 809FD874  90 01 00 34 */	stw r0, 0x34(r1)
/* 809FD878  39 61 00 30 */	addi r11, r1, 0x30
/* 809FD87C  4B 96 49 60 */	b _savegpr_29
/* 809FD880  7C 7E 1B 78 */	mr r30, r3
/* 809FD884  3C 60 80 A0 */	lis r3, m__19daNpc_Hanjo_Param_c@ha
/* 809FD888  3B E3 06 00 */	addi r31, r3, m__19daNpc_Hanjo_Param_c@l
/* 809FD88C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 809FD890  2C 00 00 02 */	cmpwi r0, 2
/* 809FD894  41 82 01 B8 */	beq lbl_809FDA4C
/* 809FD898  40 80 06 48 */	bge lbl_809FDEE0
/* 809FD89C  2C 00 00 00 */	cmpwi r0, 0
/* 809FD8A0  40 80 00 0C */	bge lbl_809FD8AC
/* 809FD8A4  48 00 06 3C */	b lbl_809FDEE0
/* 809FD8A8  48 00 06 38 */	b lbl_809FDEE0
lbl_809FD8AC:
/* 809FD8AC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FD8B0  2C 00 00 00 */	cmpwi r0, 0
/* 809FD8B4  40 82 01 98 */	bne lbl_809FDA4C
/* 809FD8B8  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FD8BC  2C 00 00 00 */	cmpwi r0, 0
/* 809FD8C0  41 82 00 08 */	beq lbl_809FD8C8
/* 809FD8C4  48 00 01 28 */	b lbl_809FD9EC
lbl_809FD8C8:
/* 809FD8C8  88 1E 17 21 */	lbz r0, 0x1721(r30)
/* 809FD8CC  28 00 00 00 */	cmplwi r0, 0
/* 809FD8D0  41 82 00 60 */	beq lbl_809FD930
/* 809FD8D4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FD8D8  2C 00 00 07 */	cmpwi r0, 7
/* 809FD8DC  41 82 00 24 */	beq lbl_809FD900
/* 809FD8E0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FD8E4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FD8E8  4B 74 7F B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD8EC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FD8F0  38 00 00 07 */	li r0, 7
/* 809FD8F4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FD8F8  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD8FC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FD900:
/* 809FD900  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FD904  2C 00 00 13 */	cmpwi r0, 0x13
/* 809FD908  41 82 01 3C */	beq lbl_809FDA44
/* 809FD90C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FD910  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FD914  4B 74 7F 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD918  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FD91C  38 00 00 13 */	li r0, 0x13
/* 809FD920  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FD924  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD928  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FD92C  48 00 01 18 */	b lbl_809FDA44
lbl_809FD930:
/* 809FD930  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FD934  2C 00 00 07 */	cmpwi r0, 7
/* 809FD938  41 82 00 24 */	beq lbl_809FD95C
/* 809FD93C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FD940  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FD944  4B 74 7F 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD948  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FD94C  38 00 00 07 */	li r0, 7
/* 809FD950  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FD954  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD958  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FD95C:
/* 809FD95C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FD960  4B 74 7D A8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FD964  28 03 00 00 */	cmplwi r3, 0
/* 809FD968  40 82 00 24 */	bne lbl_809FD98C
/* 809FD96C  38 60 00 AB */	li r3, 0xab
/* 809FD970  4B 74 F1 3C */	b daNpcT_chkEvtBit__FUl
/* 809FD974  2C 03 00 00 */	cmpwi r3, 0
/* 809FD978  40 82 00 14 */	bne lbl_809FD98C
/* 809FD97C  38 60 00 B7 */	li r3, 0xb7
/* 809FD980  4B 74 F1 2C */	b daNpcT_chkEvtBit__FUl
/* 809FD984  2C 03 00 00 */	cmpwi r3, 0
/* 809FD988  41 82 00 34 */	beq lbl_809FD9BC
lbl_809FD98C:
/* 809FD98C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FD990  2C 00 00 00 */	cmpwi r0, 0
/* 809FD994  41 82 00 B0 */	beq lbl_809FDA44
/* 809FD998  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FD99C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FD9A0  4B 74 7E F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD9A4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FD9A8  38 00 00 00 */	li r0, 0
/* 809FD9AC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FD9B0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD9B4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FD9B8  48 00 00 8C */	b lbl_809FDA44
lbl_809FD9BC:
/* 809FD9BC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FD9C0  2C 00 00 02 */	cmpwi r0, 2
/* 809FD9C4  41 82 00 80 */	beq lbl_809FDA44
/* 809FD9C8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FD9CC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FD9D0  4B 74 7E C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FD9D4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FD9D8  38 00 00 02 */	li r0, 2
/* 809FD9DC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FD9E0  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FD9E4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FD9E8  48 00 00 5C */	b lbl_809FDA44
lbl_809FD9EC:
/* 809FD9EC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 809FD9F0  2C 00 00 07 */	cmpwi r0, 7
/* 809FD9F4  41 82 00 24 */	beq lbl_809FDA18
/* 809FD9F8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 809FD9FC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809FDA00  4B 74 7E 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDA04  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 809FDA08  38 00 00 07 */	li r0, 7
/* 809FDA0C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 809FDA10  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDA14  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_809FDA18:
/* 809FDA18  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FDA1C  2C 00 00 00 */	cmpwi r0, 0
/* 809FDA20  41 82 00 24 */	beq lbl_809FDA44
/* 809FDA24  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FDA28  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FDA2C  4B 74 7E 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDA30  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FDA34  38 00 00 00 */	li r0, 0
/* 809FDA38  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FDA3C  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDA40  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_809FDA44:
/* 809FDA44  38 00 00 02 */	li r0, 2
/* 809FDA48  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FDA4C:
/* 809FDA4C  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FDA50  2C 00 00 01 */	cmpwi r0, 1
/* 809FDA54  41 82 01 40 */	beq lbl_809FDB94
/* 809FDA58  40 80 00 10 */	bge lbl_809FDA68
/* 809FDA5C  2C 00 00 00 */	cmpwi r0, 0
/* 809FDA60  40 80 00 14 */	bge lbl_809FDA74
/* 809FDA64  48 00 01 30 */	b lbl_809FDB94
lbl_809FDA68:
/* 809FDA68  2C 00 00 03 */	cmpwi r0, 3
/* 809FDA6C  40 80 01 28 */	bge lbl_809FDB94
/* 809FDA70  48 00 00 98 */	b lbl_809FDB08
lbl_809FDA74:
/* 809FDA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FDA78  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FDA7C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FDA80  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 809FDA84  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809FDA88  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 809FDA8C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809FDA90  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 809FDA94  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809FDA98  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 809FDA9C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809FDAA0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 809FDAA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809FDAA8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 809FDAAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809FDAB0  7F C3 F3 78 */	mr r3, r30
/* 809FDAB4  38 81 00 14 */	addi r4, r1, 0x14
/* 809FDAB8  38 A1 00 08 */	addi r5, r1, 8
/* 809FDABC  38 DF 00 00 */	addi r6, r31, 0
/* 809FDAC0  C0 26 00 54 */	lfs f1, 0x54(r6)
/* 809FDAC4  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 809FDAC8  C0 7F 01 E4 */	lfs f3, 0x1e4(r31)
/* 809FDACC  38 C0 00 00 */	li r6, 0
/* 809FDAD0  4B 74 D2 20 */	b chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 809FDAD4  2C 03 00 00 */	cmpwi r3, 0
/* 809FDAD8  41 82 00 BC */	beq lbl_809FDB94
/* 809FDADC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FDAE0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FDAE4  81 8C 02 0C */	lwz r12, 0x20c(r12)
/* 809FDAE8  7D 89 03 A6 */	mtctr r12
/* 809FDAEC  4E 80 04 21 */	bctrl 
/* 809FDAF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809FDAF4  41 82 00 A0 */	beq lbl_809FDB94
/* 809FDAF8  38 00 00 01 */	li r0, 1
/* 809FDAFC  98 1E 0E 32 */	stb r0, 0xe32(r30)
/* 809FDB00  98 1E 17 23 */	stb r0, 0x1723(r30)
/* 809FDB04  48 00 00 90 */	b lbl_809FDB94
lbl_809FDB08:
/* 809FDB08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FDB0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809FDB10  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809FDB14  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809FDB18  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809FDB1C  41 82 00 78 */	beq lbl_809FDB94
/* 809FDB20  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 809FDB24  4B 68 6B 34 */	b ChkCoHit__12dCcD_GObjInfFv
/* 809FDB28  28 03 00 00 */	cmplwi r3, 0
/* 809FDB2C  41 82 00 68 */	beq lbl_809FDB94
/* 809FDB30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809FDB34  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 809FDB38  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FDB3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FDB40  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 809FDB44  7D 89 03 A6 */	mtctr r12
/* 809FDB48  4E 80 04 21 */	bctrl 
/* 809FDB4C  28 03 00 00 */	cmplwi r3, 0
/* 809FDB50  41 82 00 3C */	beq lbl_809FDB8C
/* 809FDB54  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FDB58  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FDB5C  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 809FDB60  7D 89 03 A6 */	mtctr r12
/* 809FDB64  4E 80 04 21 */	bctrl 
/* 809FDB68  2C 03 00 00 */	cmpwi r3, 0
/* 809FDB6C  40 82 00 20 */	bne lbl_809FDB8C
/* 809FDB70  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 809FDB74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809FDB78  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 809FDB7C  7D 89 03 A6 */	mtctr r12
/* 809FDB80  4E 80 04 21 */	bctrl 
/* 809FDB84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809FDB88  41 82 00 0C */	beq lbl_809FDB94
lbl_809FDB8C:
/* 809FDB8C  38 00 00 0A */	li r0, 0xa
/* 809FDB90  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_809FDB94:
/* 809FDB94  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 809FDB98  2C 00 00 00 */	cmpwi r0, 0
/* 809FDB9C  40 82 03 44 */	bne lbl_809FDEE0
/* 809FDBA0  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FDBA4  28 00 00 00 */	cmplwi r0, 0
/* 809FDBA8  40 82 00 68 */	bne lbl_809FDC10
/* 809FDBAC  38 60 00 AB */	li r3, 0xab
/* 809FDBB0  4B 74 EE FC */	b daNpcT_chkEvtBit__FUl
/* 809FDBB4  2C 03 00 00 */	cmpwi r3, 0
/* 809FDBB8  40 82 00 14 */	bne lbl_809FDBCC
/* 809FDBBC  38 60 00 B7 */	li r3, 0xb7
/* 809FDBC0  4B 74 EE EC */	b daNpcT_chkEvtBit__FUl
/* 809FDBC4  2C 03 00 00 */	cmpwi r3, 0
/* 809FDBC8  41 82 00 58 */	beq lbl_809FDC20
lbl_809FDBCC:
/* 809FDBCC  88 1E 17 21 */	lbz r0, 0x1721(r30)
/* 809FDBD0  28 00 00 00 */	cmplwi r0, 0
/* 809FDBD4  40 82 00 4C */	bne lbl_809FDC20
/* 809FDBD8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FDBDC  2C 00 00 02 */	cmpwi r0, 2
/* 809FDBE0  40 82 00 40 */	bne lbl_809FDC20
/* 809FDBE4  2C 00 00 00 */	cmpwi r0, 0
/* 809FDBE8  41 82 00 38 */	beq lbl_809FDC20
/* 809FDBEC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FDBF0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FDBF4  4B 74 7C A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDBF8  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FDBFC  38 00 00 00 */	li r0, 0
/* 809FDC00  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FDC04  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDC08  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FDC0C  48 00 00 14 */	b lbl_809FDC20
lbl_809FDC10:
/* 809FDC10  28 00 00 03 */	cmplwi r0, 3
/* 809FDC14  40 82 00 0C */	bne lbl_809FDC20
/* 809FDC18  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FDC1C  4B 74 7A E0 */	b remove__18daNpcT_ActorMngr_cFv
lbl_809FDC20:
/* 809FDC20  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FDC24  4B 74 7A E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FDC28  28 03 00 00 */	cmplwi r3, 0
/* 809FDC2C  41 82 00 C0 */	beq lbl_809FDCEC
/* 809FDC30  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FDC34  2C 00 00 01 */	cmpwi r0, 1
/* 809FDC38  41 82 00 28 */	beq lbl_809FDC60
/* 809FDC3C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDC40  4B 74 7A BC */	b remove__18daNpcT_ActorMngr_cFv
/* 809FDC44  38 00 00 00 */	li r0, 0
/* 809FDC48  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FDC4C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FDC50  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FDC54  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDC58  38 00 00 01 */	li r0, 1
/* 809FDC5C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FDC60:
/* 809FDC60  38 00 00 00 */	li r0, 0
/* 809FDC64  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDC68  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809FDC6C  4B 74 7A 9C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FDC70  7C 64 1B 78 */	mr r4, r3
/* 809FDC74  7F C3 F3 78 */	mr r3, r30
/* 809FDC78  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 809FDC7C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 809FDC80  4B 74 CF 50 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 809FDC84  2C 03 00 00 */	cmpwi r3, 0
/* 809FDC88  40 82 00 38 */	bne lbl_809FDCC0
/* 809FDC8C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FDC90  2C 00 00 00 */	cmpwi r0, 0
/* 809FDC94  41 82 00 24 */	beq lbl_809FDCB8
/* 809FDC98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDC9C  4B 74 7A 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FDCA0  38 00 00 00 */	li r0, 0
/* 809FDCA4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FDCA8  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FDCAC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FDCB0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDCB4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FDCB8:
/* 809FDCB8  38 00 00 00 */	li r0, 0
/* 809FDCBC  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_809FDCC0:
/* 809FDCC0  7F C3 F3 78 */	mr r3, r30
/* 809FDCC4  4B 74 D6 74 */	b srchPlayerActor__8daNpcT_cFv
/* 809FDCC8  2C 03 00 00 */	cmpwi r3, 0
/* 809FDCCC  40 82 00 F8 */	bne lbl_809FDDC4
/* 809FDCD0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 809FDCD4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FDCD8  7C 03 00 00 */	cmpw r3, r0
/* 809FDCDC  40 82 00 E8 */	bne lbl_809FDDC4
/* 809FDCE0  38 00 00 01 */	li r0, 1
/* 809FDCE4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FDCE8  48 00 00 DC */	b lbl_809FDDC4
lbl_809FDCEC:
/* 809FDCEC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FDCF0  2C 00 00 00 */	cmpwi r0, 0
/* 809FDCF4  41 82 00 24 */	beq lbl_809FDD18
/* 809FDCF8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDCFC  4B 74 7A 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 809FDD00  38 00 00 00 */	li r0, 0
/* 809FDD04  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FDD08  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FDD0C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FDD10  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDD14  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809FDD18:
/* 809FDD18  38 00 00 00 */	li r0, 0
/* 809FDD1C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDD20  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809FDD24  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 809FDD28  7C 04 00 00 */	cmpw r4, r0
/* 809FDD2C  41 82 00 90 */	beq lbl_809FDDBC
/* 809FDD30  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 809FDD34  28 00 00 00 */	cmplwi r0, 0
/* 809FDD38  41 82 00 68 */	beq lbl_809FDDA0
/* 809FDD3C  88 1E 17 21 */	lbz r0, 0x1721(r30)
/* 809FDD40  28 00 00 00 */	cmplwi r0, 0
/* 809FDD44  41 82 00 30 */	beq lbl_809FDD74
/* 809FDD48  7F C3 F3 78 */	mr r3, r30
/* 809FDD4C  38 A0 FF FF */	li r5, -1
/* 809FDD50  38 C0 FF FF */	li r6, -1
/* 809FDD54  38 E0 00 0F */	li r7, 0xf
/* 809FDD58  39 00 00 00 */	li r8, 0
/* 809FDD5C  4B 74 D8 EC */	b step__8daNpcT_cFsiiii
/* 809FDD60  2C 03 00 00 */	cmpwi r3, 0
/* 809FDD64  41 82 00 4C */	beq lbl_809FDDB0
/* 809FDD68  38 00 00 01 */	li r0, 1
/* 809FDD6C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FDD70  48 00 00 40 */	b lbl_809FDDB0
lbl_809FDD74:
/* 809FDD74  7F C3 F3 78 */	mr r3, r30
/* 809FDD78  38 A0 00 07 */	li r5, 7
/* 809FDD7C  38 C0 00 0E */	li r6, 0xe
/* 809FDD80  38 E0 00 0F */	li r7, 0xf
/* 809FDD84  39 00 00 00 */	li r8, 0
/* 809FDD88  4B 74 D8 C0 */	b step__8daNpcT_cFsiiii
/* 809FDD8C  2C 03 00 00 */	cmpwi r3, 0
/* 809FDD90  41 82 00 20 */	beq lbl_809FDDB0
/* 809FDD94  38 00 00 01 */	li r0, 1
/* 809FDD98  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 809FDD9C  48 00 00 14 */	b lbl_809FDDB0
lbl_809FDDA0:
/* 809FDDA0  7F C3 F3 78 */	mr r3, r30
/* 809FDDA4  4B 74 CC 74 */	b setAngle__8daNpcT_cFs
/* 809FDDA8  38 00 00 01 */	li r0, 1
/* 809FDDAC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_809FDDB0:
/* 809FDDB0  38 00 00 00 */	li r0, 0
/* 809FDDB4  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 809FDDB8  48 00 00 0C */	b lbl_809FDDC4
lbl_809FDDBC:
/* 809FDDBC  7F C3 F3 78 */	mr r3, r30
/* 809FDDC0  4B 74 D5 78 */	b srchPlayerActor__8daNpcT_cFv
lbl_809FDDC4:
/* 809FDDC4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FDDC8  2C 00 00 01 */	cmpwi r0, 1
/* 809FDDCC  41 82 00 14 */	beq lbl_809FDDE0
/* 809FDDD0  40 80 01 10 */	bge lbl_809FDEE0
/* 809FDDD4  2C 00 00 00 */	cmpwi r0, 0
/* 809FDDD8  40 80 00 5C */	bge lbl_809FDE34
/* 809FDDDC  48 00 01 04 */	b lbl_809FDEE0
lbl_809FDDE0:
/* 809FDDE0  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FDDE4  2C 00 00 00 */	cmpwi r0, 0
/* 809FDDE8  41 82 00 08 */	beq lbl_809FDDF0
/* 809FDDEC  48 00 00 F4 */	b lbl_809FDEE0
lbl_809FDDF0:
/* 809FDDF0  88 1E 17 21 */	lbz r0, 0x1721(r30)
/* 809FDDF4  28 00 00 00 */	cmplwi r0, 0
/* 809FDDF8  40 82 00 E8 */	bne lbl_809FDEE0
/* 809FDDFC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 809FDE00  2C 00 00 02 */	cmpwi r0, 2
/* 809FDE04  40 82 00 DC */	bne lbl_809FDEE0
/* 809FDE08  2C 00 00 00 */	cmpwi r0, 0
/* 809FDE0C  41 82 00 D4 */	beq lbl_809FDEE0
/* 809FDE10  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 809FDE14  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809FDE18  4B 74 7A 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FDE1C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 809FDE20  38 00 00 00 */	li r0, 0
/* 809FDE24  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 809FDE28  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 809FDE2C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 809FDE30  48 00 00 B0 */	b lbl_809FDEE0
lbl_809FDE34:
/* 809FDE34  88 1E 10 C4 */	lbz r0, 0x10c4(r30)
/* 809FDE38  2C 00 00 03 */	cmpwi r0, 3
/* 809FDE3C  41 82 00 08 */	beq lbl_809FDE44
/* 809FDE40  48 00 00 A0 */	b lbl_809FDEE0
lbl_809FDE44:
/* 809FDE44  38 7E 10 D0 */	addi r3, r30, 0x10d0
/* 809FDE48  4B 74 78 C0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FDE4C  7C 7D 1B 79 */	or. r29, r3, r3
/* 809FDE50  41 82 00 90 */	beq lbl_809FDEE0
/* 809FDE54  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDE58  4B 74 78 B0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809FDE5C  7C 63 E8 50 */	subf r3, r3, r29
/* 809FDE60  30 03 FF FF */	addic r0, r3, -1
/* 809FDE64  7C 00 19 10 */	subfe r0, r0, r3
/* 809FDE68  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809FDE6C  40 82 00 10 */	bne lbl_809FDE7C
/* 809FDE70  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809FDE74  2C 00 00 02 */	cmpwi r0, 2
/* 809FDE78  41 82 00 30 */	beq lbl_809FDEA8
lbl_809FDE7C:
/* 809FDE7C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDE80  4B 74 78 7C */	b remove__18daNpcT_ActorMngr_cFv
/* 809FDE84  38 00 00 00 */	li r0, 0
/* 809FDE88  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809FDE8C  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 809FDE90  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809FDE94  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809FDE98  38 00 00 02 */	li r0, 2
/* 809FDE9C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 809FDEA0  38 00 00 01 */	li r0, 1
/* 809FDEA4  48 00 00 08 */	b lbl_809FDEAC
lbl_809FDEA8:
/* 809FDEA8  38 00 00 00 */	li r0, 0
lbl_809FDEAC:
/* 809FDEAC  2C 00 00 00 */	cmpwi r0, 0
/* 809FDEB0  41 82 00 28 */	beq lbl_809FDED8
/* 809FDEB4  7F A3 EB 78 */	mr r3, r29
/* 809FDEB8  4B 61 AE 28 */	b fopAc_IsActor__FPv
/* 809FDEBC  2C 03 00 00 */	cmpwi r3, 0
/* 809FDEC0  41 82 00 18 */	beq lbl_809FDED8
/* 809FDEC4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809FDEC8  7F A4 EB 78 */	mr r4, r29
/* 809FDECC  4B 74 78 14 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809FDED0  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 809FDED4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_809FDED8:
/* 809FDED8  38 00 00 00 */	li r0, 0
/* 809FDEDC  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_809FDEE0:
/* 809FDEE0  38 60 00 01 */	li r3, 1
/* 809FDEE4  39 61 00 30 */	addi r11, r1, 0x30
/* 809FDEE8  4B 96 43 40 */	b _restgpr_29
/* 809FDEEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809FDEF0  7C 08 03 A6 */	mtlr r0
/* 809FDEF4  38 21 00 30 */	addi r1, r1, 0x30
/* 809FDEF8  4E 80 00 20 */	blr 
