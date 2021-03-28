lbl_806500A8:
/* 806500A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806500AC  7C 08 02 A6 */	mflr r0
/* 806500B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806500B4  39 61 00 20 */	addi r11, r1, 0x20
/* 806500B8  4B D1 21 1C */	b _savegpr_27
/* 806500BC  7C 7F 1B 78 */	mr r31, r3
/* 806500C0  4B 9C 8A A4 */	b __ct__10fopAc_ac_cFv
/* 806500C4  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806500C8  4B A2 5D E4 */	b __ct__12dBgS_AcchCirFv
/* 806500CC  3B 9F 06 34 */	addi r28, r31, 0x634
/* 806500D0  7F 83 E3 78 */	mr r3, r28
/* 806500D4  4B A2 5F CC */	b __ct__9dBgS_AcchFv
/* 806500D8  3C 60 80 65 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806500DC  38 63 06 70 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806500E0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806500E4  38 03 00 0C */	addi r0, r3, 0xc
/* 806500E8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806500EC  38 03 00 18 */	addi r0, r3, 0x18
/* 806500F0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806500F4  38 7C 00 14 */	addi r3, r28, 0x14
/* 806500F8  4B A2 8D 70 */	b SetObj__16dBgS_PolyPassChkFv
/* 806500FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80650100  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80650104  90 1F 08 24 */	stw r0, 0x824(r31)
/* 80650108  38 7F 08 28 */	addi r3, r31, 0x828
/* 8065010C  4B A3 36 54 */	b __ct__10dCcD_GSttsFv
/* 80650110  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80650114  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80650118  90 7F 08 24 */	stw r3, 0x824(r31)
/* 8065011C  38 03 00 20 */	addi r0, r3, 0x20
/* 80650120  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80650124  3B 7F 08 48 */	addi r27, r31, 0x848
/* 80650128  7F 63 DB 78 */	mr r3, r27
/* 8065012C  4B A3 38 FC */	b __ct__12dCcD_GObjInfFv
/* 80650130  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80650134  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80650138  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8065013C  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 80650140  38 03 06 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80650144  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80650148  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha
/* 8065014C  38 03 06 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80650150  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80650154  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80650158  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8065015C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80650160  3B C3 00 58 */	addi r30, r3, 0x58
/* 80650164  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80650168  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8065016C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80650170  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80650174  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80650178  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8065017C  3B 83 00 84 */	addi r28, r3, 0x84
/* 80650180  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80650184  3B 7F 09 80 */	addi r27, r31, 0x980
/* 80650188  7F 63 DB 78 */	mr r3, r27
/* 8065018C  4B A3 38 9C */	b __ct__12dCcD_GObjInfFv
/* 80650190  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80650194  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80650198  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8065019C  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 806501A0  38 03 06 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806501A4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806501A8  3C 60 80 65 */	lis r3, __vt__8cM3dGSph@ha
/* 806501AC  38 03 06 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806501B0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806501B4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806501B8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806501BC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806501C0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 806501C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806501C8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806501CC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806501D0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 806501D4  93 9B 01 34 */	stw r28, 0x134(r27)
/* 806501D8  3B 7F 0A B8 */	addi r27, r31, 0xab8
/* 806501DC  7F 63 DB 78 */	mr r3, r27
/* 806501E0  4B A3 38 48 */	b __ct__12dCcD_GObjInfFv
/* 806501E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806501E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806501EC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806501F0  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 806501F4  38 03 06 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806501F8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806501FC  38 7B 01 24 */	addi r3, r27, 0x124
/* 80650200  4B C1 ED 88 */	b __ct__8cM3dGCpsFv
/* 80650204  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80650208  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 8065020C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80650210  38 03 00 58 */	addi r0, r3, 0x58
/* 80650214  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 80650218  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 8065021C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80650220  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80650224  38 03 00 2C */	addi r0, r3, 0x2c
/* 80650228  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8065022C  38 03 00 84 */	addi r0, r3, 0x84
/* 80650230  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 80650234  7F E3 FB 78 */	mr r3, r31
/* 80650238  39 61 00 20 */	addi r11, r1, 0x20
/* 8065023C  4B D1 1F E4 */	b _restgpr_27
/* 80650240  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80650244  7C 08 03 A6 */	mtlr r0
/* 80650248  38 21 00 20 */	addi r1, r1, 0x20
/* 8065024C  4E 80 00 20 */	blr 
