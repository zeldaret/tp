lbl_8004D6A4:
/* 8004D6A4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8004D6A8  7C 08 02 A6 */	mflr r0
/* 8004D6AC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8004D6B0  39 61 00 60 */	addi r11, r1, 0x60
/* 8004D6B4  48 31 4B 0D */	bl _savegpr_22
/* 8004D6B8  7C 76 1B 78 */	mr r22, r3
/* 8004D6BC  7C 97 23 78 */	mr r23, r4
/* 8004D6C0  7C B8 2B 78 */	mr r24, r5
/* 8004D6C4  7C F9 3B 78 */	mr r25, r7
/* 8004D6C8  7D 1A 43 78 */	mr r26, r8
/* 8004D6CC  7D 3B 4B 78 */	mr r27, r9
/* 8004D6D0  7D 5C 53 78 */	mr r28, r10
/* 8004D6D4  80 81 00 68 */	lwz r4, 0x68(r1)
/* 8004D6D8  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 8004D6DC  8B C1 00 73 */	lbz r30, 0x73(r1)
/* 8004D6E0  83 E1 00 74 */	lwz r31, 0x74(r1)
/* 8004D6E4  7C C3 33 78 */	mr r3, r6
/* 8004D6E8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8004D6EC  38 C1 00 24 */	addi r6, r1, 0x24
/* 8004D6F0  38 E1 00 20 */	addi r7, r1, 0x20
/* 8004D6F4  39 01 00 2C */	addi r8, r1, 0x2c
/* 8004D6F8  4B FF F8 99 */	bl getPolyColor__13dPa_control_cFR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 8004D6FC  2C 03 00 00 */	cmpwi r3, 0
/* 8004D700  41 82 00 54 */	beq lbl_8004D754
/* 8004D704  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8004D708  90 01 00 08 */	stw r0, 8(r1)
/* 8004D70C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8004D710  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8004D714  38 01 00 28 */	addi r0, r1, 0x28
/* 8004D718  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004D71C  38 01 00 24 */	addi r0, r1, 0x24
/* 8004D720  90 01 00 18 */	stw r0, 0x18(r1)
/* 8004D724  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004D728  7E C3 B3 78 */	mr r3, r22
/* 8004D72C  7E E4 BB 78 */	mr r4, r23
/* 8004D730  38 A0 00 00 */	li r5, 0
/* 8004D734  7F 06 C3 78 */	mr r6, r24
/* 8004D738  7F 27 CB 78 */	mr r7, r25
/* 8004D73C  7F 48 D3 78 */	mr r8, r26
/* 8004D740  7F 69 DB 78 */	mr r9, r27
/* 8004D744  7F 8A E3 78 */	mr r10, r28
/* 8004D748  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8004D74C  4B FF FD 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004D750  48 00 00 08 */	b lbl_8004D758
lbl_8004D754:
/* 8004D754  38 60 00 00 */	li r3, 0
lbl_8004D758:
/* 8004D758  39 61 00 60 */	addi r11, r1, 0x60
/* 8004D75C  48 31 4A B1 */	bl _restgpr_22
/* 8004D760  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8004D764  7C 08 03 A6 */	mtlr r0
/* 8004D768  38 21 00 60 */	addi r1, r1, 0x60
/* 8004D76C  4E 80 00 20 */	blr 
