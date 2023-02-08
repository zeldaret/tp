lbl_8027D8E0:
/* 8027D8E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8027D8E4  7C 08 02 A6 */	mflr r0
/* 8027D8E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027D8EC  39 61 00 40 */	addi r11, r1, 0x40
/* 8027D8F0  48 0E 48 C1 */	bl _savegpr_18
/* 8027D8F4  7C 9C 23 78 */	mr r28, r4
/* 8027D8F8  7C BD 2B 78 */	mr r29, r5
/* 8027D8FC  83 C5 00 00 */	lwz r30, 0(r5)
/* 8027D900  A0 04 00 08 */	lhz r0, 8(r4)
/* 8027D904  B0 05 00 0C */	sth r0, 0xc(r5)
/* 8027D908  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 8027D90C  B0 05 00 10 */	sth r0, 0x10(r5)
/* 8027D910  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 8027D914  54 03 10 3A */	slwi r3, r0, 2
/* 8027D918  7F C4 F3 78 */	mr r4, r30
/* 8027D91C  38 A0 00 00 */	li r5, 0
/* 8027D920  48 05 13 F1 */	bl __nwa__FUlP7JKRHeapi
/* 8027D924  90 7D 00 04 */	stw r3, 4(r29)
/* 8027D928  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 8027D92C  54 03 10 3A */	slwi r3, r0, 2
/* 8027D930  7F C4 F3 78 */	mr r4, r30
/* 8027D934  38 A0 00 00 */	li r5, 0
/* 8027D938  48 05 13 D9 */	bl __nwa__FUlP7JKRHeapi
/* 8027D93C  90 7D 00 08 */	stw r3, 8(r29)
/* 8027D940  3B 60 00 10 */	li r27, 0x10
/* 8027D944  3A A0 00 00 */	li r21, 0
/* 8027D948  3C 60 46 4C */	lis r3, 0x464C /* 0x464C4431@ha */
/* 8027D94C  3A 63 44 31 */	addi r19, r3, 0x4431 /* 0x464C4431@l */
/* 8027D950  A2 5C 00 08 */	lhz r18, 8(r28)
/* 8027D954  48 00 02 D8 */	b lbl_8027DC2C
lbl_8027D958:
/* 8027D958  7F 3C DA 14 */	add r25, r28, r27
/* 8027D95C  38 60 00 48 */	li r3, 0x48
/* 8027D960  7F C4 F3 78 */	mr r4, r30
/* 8027D964  38 A0 00 00 */	li r5, 0
/* 8027D968  48 05 13 31 */	bl __nw__FUlP7JKRHeapi
/* 8027D96C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8027D970  41 82 00 0C */	beq lbl_8027D97C
/* 8027D974  4B FF 66 9D */	bl __ct__11JPAResourceFv
/* 8027D978  7C 7F 1B 78 */	mr r31, r3
lbl_8027D97C:
/* 8027D97C  88 19 00 04 */	lbz r0, 4(r25)
/* 8027D980  98 1F 00 3E */	stb r0, 0x3e(r31)
/* 8027D984  88 1F 00 3E */	lbz r0, 0x3e(r31)
/* 8027D988  28 00 00 00 */	cmplwi r0, 0
/* 8027D98C  41 82 00 18 */	beq lbl_8027D9A4
/* 8027D990  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 8027D994  7F C4 F3 78 */	mr r4, r30
/* 8027D998  38 A0 00 00 */	li r5, 0
/* 8027D99C  48 05 13 75 */	bl __nwa__FUlP7JKRHeapi
/* 8027D9A0  48 00 00 08 */	b lbl_8027D9A8
lbl_8027D9A4:
/* 8027D9A4  38 60 00 00 */	li r3, 0
lbl_8027D9A8:
/* 8027D9A8  90 7F 00 30 */	stw r3, 0x30(r31)
/* 8027D9AC  88 19 00 05 */	lbz r0, 5(r25)
/* 8027D9B0  98 1F 00 3F */	stb r0, 0x3f(r31)
/* 8027D9B4  88 1F 00 3F */	lbz r0, 0x3f(r31)
/* 8027D9B8  28 00 00 00 */	cmplwi r0, 0
/* 8027D9BC  41 82 00 18 */	beq lbl_8027D9D4
/* 8027D9C0  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 8027D9C4  7F C4 F3 78 */	mr r4, r30
/* 8027D9C8  38 A0 00 00 */	li r5, 0
/* 8027D9CC  48 05 13 45 */	bl __nwa__FUlP7JKRHeapi
/* 8027D9D0  48 00 00 08 */	b lbl_8027D9D8
lbl_8027D9D4:
/* 8027D9D4  38 60 00 00 */	li r3, 0
lbl_8027D9D8:
/* 8027D9D8  90 7F 00 34 */	stw r3, 0x34(r31)
/* 8027D9DC  88 19 00 06 */	lbz r0, 6(r25)
/* 8027D9E0  98 1F 00 40 */	stb r0, 0x40(r31)
/* 8027D9E4  3B 40 00 00 */	li r26, 0
/* 8027D9E8  93 5F 00 38 */	stw r26, 0x38(r31)
/* 8027D9EC  A0 19 00 00 */	lhz r0, 0(r25)
/* 8027D9F0  B0 1F 00 3C */	sth r0, 0x3c(r31)
/* 8027D9F4  3A E0 00 00 */	li r23, 0
/* 8027D9F8  3B 00 00 00 */	li r24, 0
/* 8027D9FC  3B 7B 00 08 */	addi r27, r27, 8
/* 8027DA00  48 00 02 04 */	b lbl_8027DC04
lbl_8027DA04:
/* 8027DA04  7E DC DA 14 */	add r22, r28, r27
/* 8027DA08  82 96 00 04 */	lwz r20, 4(r22)
/* 8027DA0C  80 16 00 00 */	lwz r0, 0(r22)
/* 8027DA10  7C 00 98 00 */	cmpw r0, r19
/* 8027DA14  41 82 00 94 */	beq lbl_8027DAA8
/* 8027DA18  40 80 00 54 */	bge lbl_8027DA6C
/* 8027DA1C  3C 60 45 53 */	lis r3, 0x4553 /* 0x45535031@ha */
/* 8027DA20  38 63 50 31 */	addi r3, r3, 0x5031 /* 0x45535031@l */
/* 8027DA24  7C 00 18 00 */	cmpw r0, r3
/* 8027DA28  41 82 01 48 */	beq lbl_8027DB70
/* 8027DA2C  40 80 00 2C */	bge lbl_8027DA58
/* 8027DA30  3C 60 42 53 */	lis r3, 0x4253 /* 0x42535031@ha */
/* 8027DA34  38 63 50 31 */	addi r3, r3, 0x5031 /* 0x42535031@l */
/* 8027DA38  7C 00 18 00 */	cmpw r0, r3
/* 8027DA3C  41 82 01 04 */	beq lbl_8027DB40
/* 8027DA40  40 80 01 BC */	bge lbl_8027DBFC
/* 8027DA44  3C 60 42 45 */	lis r3, 0x4245 /* 0x42454D31@ha */
/* 8027DA48  38 63 4D 31 */	addi r3, r3, 0x4D31 /* 0x42454D31@l */
/* 8027DA4C  7C 00 18 00 */	cmpw r0, r3
/* 8027DA50  41 82 00 C4 */	beq lbl_8027DB14
/* 8027DA54  48 00 01 A8 */	b lbl_8027DBFC
lbl_8027DA58:
/* 8027DA58  3C 60 45 54 */	lis r3, 0x4554 /* 0x45545831@ha */
/* 8027DA5C  38 63 58 31 */	addi r3, r3, 0x5831 /* 0x45545831@l */
/* 8027DA60  7C 00 18 00 */	cmpw r0, r3
/* 8027DA64  41 82 01 64 */	beq lbl_8027DBC8
/* 8027DA68  48 00 01 94 */	b lbl_8027DBFC
lbl_8027DA6C:
/* 8027DA6C  3C 60 53 53 */	lis r3, 0x5353 /* 0x53535031@ha */
/* 8027DA70  38 63 50 31 */	addi r3, r3, 0x5031 /* 0x53535031@l */
/* 8027DA74  7C 00 18 00 */	cmpw r0, r3
/* 8027DA78  41 82 01 24 */	beq lbl_8027DB9C
/* 8027DA7C  40 80 00 18 */	bge lbl_8027DA94
/* 8027DA80  3C 60 4B 46 */	lis r3, 0x4B46 /* 0x4B464131@ha */
/* 8027DA84  38 63 41 31 */	addi r3, r3, 0x4131 /* 0x4B464131@l */
/* 8027DA88  7C 00 18 00 */	cmpw r0, r3
/* 8027DA8C  41 82 00 54 */	beq lbl_8027DAE0
/* 8027DA90  48 00 01 6C */	b lbl_8027DBFC
lbl_8027DA94:
/* 8027DA94  3C 60 54 44 */	lis r3, 0x5444 /* 0x54444231@ha */
/* 8027DA98  38 63 42 31 */	addi r3, r3, 0x4231 /* 0x54444231@l */
/* 8027DA9C  7C 00 18 00 */	cmpw r0, r3
/* 8027DAA0  41 82 01 54 */	beq lbl_8027DBF4
/* 8027DAA4  48 00 01 58 */	b lbl_8027DBFC
lbl_8027DAA8:
/* 8027DAA8  38 60 00 2C */	li r3, 0x2c
/* 8027DAAC  7F C4 F3 78 */	mr r4, r30
/* 8027DAB0  38 A0 00 00 */	li r5, 0
/* 8027DAB4  48 05 11 E5 */	bl __nw__FUlP7JKRHeapi
/* 8027DAB8  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DABC  41 82 00 14 */	beq lbl_8027DAD0
/* 8027DAC0  7E C4 B3 78 */	mr r4, r22
/* 8027DAC4  7F C5 F3 78 */	mr r5, r30
/* 8027DAC8  4B FF F5 C1 */	bl __ct__13JPAFieldBlockFPCUcP7JKRHeap
/* 8027DACC  7C 60 1B 78 */	mr r0, r3
lbl_8027DAD0:
/* 8027DAD0  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 8027DAD4  7C 03 B9 2E */	stwx r0, r3, r23
/* 8027DAD8  3A F7 00 04 */	addi r23, r23, 4
/* 8027DADC  48 00 01 20 */	b lbl_8027DBFC
lbl_8027DAE0:
/* 8027DAE0  38 60 00 08 */	li r3, 8
/* 8027DAE4  7F C4 F3 78 */	mr r4, r30
/* 8027DAE8  38 A0 00 00 */	li r5, 0
/* 8027DAEC  48 05 11 AD */	bl __nw__FUlP7JKRHeapi
/* 8027DAF0  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DAF4  41 82 00 10 */	beq lbl_8027DB04
/* 8027DAF8  7E C4 B3 78 */	mr r4, r22
/* 8027DAFC  4B FF FC 35 */	bl __ct__11JPAKeyBlockFPCUc
/* 8027DB00  7C 60 1B 78 */	mr r0, r3
lbl_8027DB04:
/* 8027DB04  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8027DB08  7C 03 D1 2E */	stwx r0, r3, r26
/* 8027DB0C  3B 5A 00 04 */	addi r26, r26, 4
/* 8027DB10  48 00 00 EC */	b lbl_8027DBFC
lbl_8027DB14:
/* 8027DB14  38 60 00 08 */	li r3, 8
/* 8027DB18  7F C4 F3 78 */	mr r4, r30
/* 8027DB1C  38 A0 00 00 */	li r5, 0
/* 8027DB20  48 05 11 79 */	bl __nw__FUlP7JKRHeapi
/* 8027DB24  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB28  41 82 00 10 */	beq lbl_8027DB38
/* 8027DB2C  7E C4 B3 78 */	mr r4, r22
/* 8027DB30  4B FF DF E9 */	bl __ct__16JPADynamicsBlockFPCUc
/* 8027DB34  7C 60 1B 78 */	mr r0, r3
lbl_8027DB38:
/* 8027DB38  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8027DB3C  48 00 00 C0 */	b lbl_8027DBFC
lbl_8027DB40:
/* 8027DB40  38 60 00 14 */	li r3, 0x14
/* 8027DB44  7F C4 F3 78 */	mr r4, r30
/* 8027DB48  38 A0 00 00 */	li r5, 0
/* 8027DB4C  48 05 11 4D */	bl __nw__FUlP7JKRHeapi
/* 8027DB50  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB54  41 82 00 14 */	beq lbl_8027DB68
/* 8027DB58  7E C4 B3 78 */	mr r4, r22
/* 8027DB5C  7F C5 F3 78 */	mr r5, r30
/* 8027DB60  4B FF CB 7D */	bl __ct__12JPABaseShapeFPCUcP7JKRHeap
/* 8027DB64  7C 60 1B 78 */	mr r0, r3
lbl_8027DB68:
/* 8027DB68  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8027DB6C  48 00 00 90 */	b lbl_8027DBFC
lbl_8027DB70:
/* 8027DB70  38 60 00 1C */	li r3, 0x1c
/* 8027DB74  7F C4 F3 78 */	mr r4, r30
/* 8027DB78  38 A0 00 00 */	li r5, 0
/* 8027DB7C  48 05 11 1D */	bl __nw__FUlP7JKRHeapi
/* 8027DB80  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DB84  41 82 00 10 */	beq lbl_8027DB94
/* 8027DB88  7E C4 B3 78 */	mr r4, r22
/* 8027DB8C  4B FF D1 FD */	bl __ct__13JPAExtraShapeFPCUc
/* 8027DB90  7C 60 1B 78 */	mr r0, r3
lbl_8027DB94:
/* 8027DB94  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8027DB98  48 00 00 64 */	b lbl_8027DBFC
lbl_8027DB9C:
/* 8027DB9C  38 60 00 04 */	li r3, 4
/* 8027DBA0  7F C4 F3 78 */	mr r4, r30
/* 8027DBA4  38 A0 00 00 */	li r5, 0
/* 8027DBA8  48 05 10 F1 */	bl __nw__FUlP7JKRHeapi
/* 8027DBAC  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DBB0  41 82 00 10 */	beq lbl_8027DBC0
/* 8027DBB4  7E C4 B3 78 */	mr r4, r22
/* 8027DBB8  4B FF D4 81 */	bl __ct__13JPAChildShapeFPCUc
/* 8027DBBC  7C 60 1B 78 */	mr r0, r3
lbl_8027DBC0:
/* 8027DBC0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8027DBC4  48 00 00 38 */	b lbl_8027DBFC
lbl_8027DBC8:
/* 8027DBC8  38 60 00 04 */	li r3, 4
/* 8027DBCC  7F C4 F3 78 */	mr r4, r30
/* 8027DBD0  38 A0 00 00 */	li r5, 0
/* 8027DBD4  48 05 10 C5 */	bl __nw__FUlP7JKRHeapi
/* 8027DBD8  7C 60 1B 79 */	or. r0, r3, r3
/* 8027DBDC  41 82 00 10 */	beq lbl_8027DBEC
/* 8027DBE0  7E C4 B3 78 */	mr r4, r22
/* 8027DBE4  4B FF D5 59 */	bl __ct__13JPAExTexShapeFPCUc
/* 8027DBE8  7C 60 1B 78 */	mr r0, r3
lbl_8027DBEC:
/* 8027DBEC  90 1F 00 28 */	stw r0, 0x28(r31)
/* 8027DBF0  48 00 00 0C */	b lbl_8027DBFC
lbl_8027DBF4:
/* 8027DBF4  38 16 00 08 */	addi r0, r22, 8
/* 8027DBF8  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_8027DBFC:
/* 8027DBFC  7F 7B A2 14 */	add r27, r27, r20
/* 8027DC00  3B 18 00 01 */	addi r24, r24, 1
lbl_8027DC04:
/* 8027DC04  A0 19 00 02 */	lhz r0, 2(r25)
/* 8027DC08  7C 18 00 00 */	cmpw r24, r0
/* 8027DC0C  41 80 FD F8 */	blt lbl_8027DA04
/* 8027DC10  7F E3 FB 78 */	mr r3, r31
/* 8027DC14  7F C4 F3 78 */	mr r4, r30
/* 8027DC18  4B FF 64 69 */	bl init__11JPAResourceFP7JKRHeap
/* 8027DC1C  7F A3 EB 78 */	mr r3, r29
/* 8027DC20  7F E4 FB 78 */	mr r4, r31
/* 8027DC24  4B FF 63 69 */	bl registRes__18JPAResourceManagerFP11JPAResource
/* 8027DC28  3A B5 00 01 */	addi r21, r21, 1
lbl_8027DC2C:
/* 8027DC2C  7C 15 90 00 */	cmpw r21, r18
/* 8027DC30  41 80 FD 28 */	blt lbl_8027D958
/* 8027DC34  82 9C 00 0C */	lwz r20, 0xc(r28)
/* 8027DC38  3A A0 00 00 */	li r21, 0
/* 8027DC3C  A2 5C 00 0A */	lhz r18, 0xa(r28)
/* 8027DC40  48 00 00 40 */	b lbl_8027DC80
lbl_8027DC44:
/* 8027DC44  7E 7C A2 14 */	add r19, r28, r20
/* 8027DC48  82 D3 00 04 */	lwz r22, 4(r19)
/* 8027DC4C  38 60 00 48 */	li r3, 0x48
/* 8027DC50  7F C4 F3 78 */	mr r4, r30
/* 8027DC54  38 A0 00 00 */	li r5, 0
/* 8027DC58  48 05 10 41 */	bl __nw__FUlP7JKRHeapi
/* 8027DC5C  7C 64 1B 79 */	or. r4, r3, r3
/* 8027DC60  41 82 00 10 */	beq lbl_8027DC70
/* 8027DC64  7E 64 9B 78 */	mr r4, r19
/* 8027DC68  4B FF FB 6D */	bl __ct__10JPATextureFPCUc
/* 8027DC6C  7C 64 1B 78 */	mr r4, r3
lbl_8027DC70:
/* 8027DC70  7F A3 EB 78 */	mr r3, r29
/* 8027DC74  4B FF 63 39 */	bl registTex__18JPAResourceManagerFP10JPATexture
/* 8027DC78  7E 94 B2 14 */	add r20, r20, r22
/* 8027DC7C  3A B5 00 01 */	addi r21, r21, 1
lbl_8027DC80:
/* 8027DC80  7C 15 90 00 */	cmpw r21, r18
/* 8027DC84  41 80 FF C0 */	blt lbl_8027DC44
/* 8027DC88  39 61 00 40 */	addi r11, r1, 0x40
/* 8027DC8C  48 0E 45 71 */	bl _restgpr_18
/* 8027DC90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8027DC94  7C 08 03 A6 */	mtlr r0
/* 8027DC98  38 21 00 40 */	addi r1, r1, 0x40
/* 8027DC9C  4E 80 00 20 */	blr 
