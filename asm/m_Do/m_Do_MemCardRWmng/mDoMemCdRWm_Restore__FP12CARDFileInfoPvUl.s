lbl_8001769C:
/* 8001769C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800176A0  7C 08 02 A6 */	mflr r0
/* 800176A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 800176A8  39 61 00 40 */	addi r11, r1, 0x40
/* 800176AC  48 34 AB 0D */	bl _savegpr_20
/* 800176B0  7C 74 1B 78 */	mr r20, r3
/* 800176B4  7C 95 23 78 */	mr r21, r4
/* 800176B8  7C B6 2B 78 */	mr r22, r5
/* 800176BC  3B 20 00 00 */	li r25, 0
/* 800176C0  3C 80 80 3F */	lis r4, sTmpBuf@ha /* 0x803ECF40@ha */
/* 800176C4  38 84 CF 40 */	addi r4, r4, sTmpBuf@l /* 0x803ECF40@l */
/* 800176C8  7C 98 23 78 */	mr r24, r4
/* 800176CC  3A E4 20 00 */	addi r23, r4, 0x2000
/* 800176D0  38 A0 20 00 */	li r5, 0x2000
/* 800176D4  38 C0 40 00 */	li r6, 0x4000
/* 800176D8  48 34 11 F5 */	bl CARDRead
/* 800176DC  2C 03 00 00 */	cmpwi r3, 0
/* 800176E0  41 82 00 08 */	beq lbl_800176E8
/* 800176E4  48 00 01 80 */	b lbl_80017864
lbl_800176E8:
/* 800176E8  38 78 00 08 */	addi r3, r24, 8
/* 800176EC  48 00 06 01 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 800176F0  7C 7A 1B 78 */	mr r26, r3
/* 800176F4  38 78 0A 9C */	addi r3, r24, 0xa9c
/* 800176F8  48 00 05 F5 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 800176FC  7C 7B 1B 78 */	mr r27, r3
/* 80017700  38 78 15 30 */	addi r3, r24, 0x1530
/* 80017704  48 00 05 E9 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 80017708  7C 7C 1B 78 */	mr r28, r3
/* 8001770C  7E 83 A3 78 */	mr r3, r20
/* 80017710  7E E4 BB 78 */	mr r4, r23
/* 80017714  38 A0 20 00 */	li r5, 0x2000
/* 80017718  38 C0 60 00 */	li r6, 0x6000
/* 8001771C  48 34 11 B1 */	bl CARDRead
/* 80017720  2C 03 00 00 */	cmpwi r3, 0
/* 80017724  41 82 00 08 */	beq lbl_8001772C
/* 80017728  48 00 01 3C */	b lbl_80017864
lbl_8001772C:
/* 8001772C  38 77 00 08 */	addi r3, r23, 8
/* 80017730  48 00 05 BD */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 80017734  7C 7D 1B 78 */	mr r29, r3
/* 80017738  38 77 0A 9C */	addi r3, r23, 0xa9c
/* 8001773C  48 00 05 B1 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 80017740  7C 7E 1B 78 */	mr r30, r3
/* 80017744  38 77 15 30 */	addi r3, r23, 0x1530
/* 80017748  48 00 05 A5 */	bl mDoMemCdRWm_TestCheckSumGameData__FPv
/* 8001774C  7C 7F 1B 78 */	mr r31, r3
/* 80017750  2C 1A 00 00 */	cmpwi r26, 0
/* 80017754  40 82 00 20 */	bne lbl_80017774
/* 80017758  2C 1D 00 00 */	cmpwi r29, 0
/* 8001775C  41 82 00 18 */	beq lbl_80017774
/* 80017760  38 78 00 08 */	addi r3, r24, 8
/* 80017764  38 97 00 08 */	addi r4, r23, 8
/* 80017768  38 A0 0A 94 */	li r5, 0xa94
/* 8001776C  4B FE BD D5 */	bl memcpy
/* 80017770  3B 20 00 01 */	li r25, 1
lbl_80017774:
/* 80017774  2C 1B 00 00 */	cmpwi r27, 0
/* 80017778  40 82 00 20 */	bne lbl_80017798
/* 8001777C  2C 1E 00 00 */	cmpwi r30, 0
/* 80017780  41 82 00 18 */	beq lbl_80017798
/* 80017784  38 78 0A 9C */	addi r3, r24, 0xa9c
/* 80017788  38 97 0A 9C */	addi r4, r23, 0xa9c
/* 8001778C  38 A0 0A 94 */	li r5, 0xa94
/* 80017790  4B FE BD B1 */	bl memcpy
/* 80017794  3B 20 00 01 */	li r25, 1
lbl_80017798:
/* 80017798  2C 1C 00 00 */	cmpwi r28, 0
/* 8001779C  40 82 00 20 */	bne lbl_800177BC
/* 800177A0  2C 1F 00 00 */	cmpwi r31, 0
/* 800177A4  41 82 00 18 */	beq lbl_800177BC
/* 800177A8  38 78 15 30 */	addi r3, r24, 0x1530
/* 800177AC  38 97 15 30 */	addi r4, r23, 0x1530
/* 800177B0  38 A0 0A 94 */	li r5, 0xa94
/* 800177B4  4B FE BD 8D */	bl memcpy
/* 800177B8  3B 20 00 01 */	li r25, 1
lbl_800177BC:
/* 800177BC  7E 83 A3 78 */	mr r3, r20
/* 800177C0  48 00 03 8D */	bl mDoMemCdRWm_CheckCardStat__FP12CARDFileInfo
/* 800177C4  2C 03 00 00 */	cmpwi r3, 0
/* 800177C8  40 82 00 0C */	bne lbl_800177D4
/* 800177CC  38 60 FF 80 */	li r3, -128
/* 800177D0  48 00 00 94 */	b lbl_80017864
lbl_800177D4:
/* 800177D4  2C 19 00 00 */	cmpwi r25, 0
/* 800177D8  41 82 00 44 */	beq lbl_8001781C
/* 800177DC  7E 83 A3 78 */	mr r3, r20
/* 800177E0  7F 04 C3 78 */	mr r4, r24
/* 800177E4  38 A0 20 00 */	li r5, 0x2000
/* 800177E8  38 C0 40 00 */	li r6, 0x4000
/* 800177EC  48 34 14 5D */	bl CARDWrite
/* 800177F0  2C 03 00 00 */	cmpwi r3, 0
/* 800177F4  41 82 00 08 */	beq lbl_800177FC
/* 800177F8  48 00 00 6C */	b lbl_80017864
lbl_800177FC:
/* 800177FC  7E 83 A3 78 */	mr r3, r20
/* 80017800  7F 04 C3 78 */	mr r4, r24
/* 80017804  38 A0 20 00 */	li r5, 0x2000
/* 80017808  38 C0 60 00 */	li r6, 0x6000
/* 8001780C  48 34 14 3D */	bl CARDWrite
/* 80017810  2C 03 00 00 */	cmpwi r3, 0
/* 80017814  41 82 00 08 */	beq lbl_8001781C
/* 80017818  48 00 00 4C */	b lbl_80017864
lbl_8001781C:
/* 8001781C  7E A3 AB 78 */	mr r3, r21
/* 80017820  38 98 00 08 */	addi r4, r24, 8
/* 80017824  7E C5 B3 78 */	mr r5, r22
/* 80017828  4B FE BD 19 */	bl memcpy
/* 8001782C  80 18 00 04 */	lwz r0, 4(r24)
/* 80017830  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 80017834  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 80017838  90 03 1F F8 */	stw r0, 0x1ff8(r3)
/* 8001783C  88 63 1F BC */	lbz r3, 0x1fbc(r3)
/* 80017840  38 81 00 08 */	addi r4, r1, 8
/* 80017844  48 34 19 15 */	bl CARDGetSerialNo
/* 80017848  80 01 00 08 */	lwz r0, 8(r1)
/* 8001784C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80017850  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 80017854  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 80017858  90 83 1F F4 */	stw r4, 0x1ff4(r3)
/* 8001785C  90 03 1F F0 */	stw r0, 0x1ff0(r3)
/* 80017860  38 60 00 00 */	li r3, 0
lbl_80017864:
/* 80017864  39 61 00 40 */	addi r11, r1, 0x40
/* 80017868  48 34 A9 9D */	bl _restgpr_20
/* 8001786C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80017870  7C 08 03 A6 */	mtlr r0
/* 80017874  38 21 00 40 */	addi r1, r1, 0x40
/* 80017878  4E 80 00 20 */	blr 
