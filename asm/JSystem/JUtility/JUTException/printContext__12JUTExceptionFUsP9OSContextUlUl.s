lbl_802E34C0:
/* 802E34C0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E34C4  7C 08 02 A6 */	mflr r0
/* 802E34C8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802E34CC  39 61 00 40 */	addi r11, r1, 0x40
/* 802E34D0  48 07 EC F1 */	bl _savegpr_22
/* 802E34D4  7C 79 1B 78 */	mr r25, r3
/* 802E34D8  7C 9A 23 78 */	mr r26, r4
/* 802E34DC  7C BB 2B 78 */	mr r27, r5
/* 802E34E0  7C DC 33 78 */	mr r28, r6
/* 802E34E4  7C FD 3B 78 */	mr r29, r7
/* 802E34E8  4B FF FA 31 */	bl isEnablePad__12JUTExceptionCFv
/* 802E34EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E34F0  7C 00 00 34 */	cntlzw r0, r0
/* 802E34F4  54 1F D9 7E */	srwi r31, r0, 5
/* 802E34F8  80 6D 8F 88 */	lwz r3, sErrorManager__12JUTException(r13)
/* 802E34FC  80 63 00 80 */	lwz r3, 0x80(r3)
/* 802E3500  80 03 00 00 */	lwz r0, 0(r3)
/* 802E3504  28 00 00 00 */	cmplwi r0, 0
/* 802E3508  41 82 04 60 */	beq lbl_802E3968
/* 802E350C  38 60 00 00 */	li r3, 0
/* 802E3510  48 06 8C D1 */	bl VISetPreRetraceCallback
/* 802E3514  38 60 00 00 */	li r3, 0
/* 802E3518  48 06 8D 0D */	bl VISetPostRetraceCallback
/* 802E351C  38 60 00 00 */	li r3, 0
/* 802E3520  48 06 A3 21 */	bl VISetBlack
/* 802E3524  48 06 A1 71 */	bl VIFlush
/* 802E3528  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E352C  28 03 00 00 */	cmplwi r3, 0
/* 802E3530  41 82 04 38 */	beq lbl_802E3968
/* 802E3534  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 802E3538  28 00 00 11 */	cmplwi r0, 0x11
/* 802E353C  40 80 00 20 */	bge lbl_802E355C
/* 802E3540  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E3544  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E3548  38 84 04 63 */	addi r4, r4, 0x463
/* 802E354C  80 B9 00 7C */	lwz r5, 0x7c(r25)
/* 802E3550  4C C6 31 82 */	crclr 6
/* 802E3554  48 00 46 65 */	bl print_f__10JUTConsoleFPCce
/* 802E3558  48 00 00 1C */	b lbl_802E3574
lbl_802E355C:
/* 802E355C  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E3560  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E3564  38 84 04 9A */	addi r4, r4, 0x49a
/* 802E3568  80 B9 00 7C */	lwz r5, 0x7c(r25)
/* 802E356C  4C C6 31 82 */	crclr 6
/* 802E3570  48 00 46 49 */	bl print_f__10JUTConsoleFPCce
lbl_802E3574:
/* 802E3574  3B C0 00 00 */	li r30, 0
/* 802E3578  3C 60 80 3A */	lis r3, JUTException__stringBase0@ha /* 0x8039D490@ha */
/* 802E357C  3A E3 D4 90 */	addi r23, r3, JUTException__stringBase0@l /* 0x8039D490@l */
/* 802E3580  57 F8 06 3E */	clrlwi r24, r31, 0x18
lbl_802E3584:
/* 802E3584  7F 23 CB 78 */	mr r3, r25
/* 802E3588  7F 44 D3 78 */	mr r4, r26
/* 802E358C  7F 65 DB 78 */	mr r5, r27
/* 802E3590  7F 86 E3 78 */	mr r6, r28
/* 802E3594  7F A7 EB 78 */	mr r7, r29
/* 802E3598  4B FF F2 19 */	bl showMainInfo__12JUTExceptionFUsP9OSContextUlUl
/* 802E359C  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E35A0  38 80 00 01 */	li r4, 1
/* 802E35A4  48 00 4E AD */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E35A8  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 802E35AC  48 00 03 D5 */	bl waitTime__12JUTExceptionFl
/* 802E35B0  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802E35B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802E35B8  41 82 00 34 */	beq lbl_802E35EC
/* 802E35BC  7F 23 CB 78 */	mr r3, r25
/* 802E35C0  38 80 00 01 */	li r4, 1
/* 802E35C4  7F 45 D3 78 */	mr r5, r26
/* 802E35C8  7F 66 DB 78 */	mr r6, r27
/* 802E35CC  7F 87 E3 78 */	mr r7, r28
/* 802E35D0  7F A8 EB 78 */	mr r8, r29
/* 802E35D4  4B FF F8 9D */	bl printDebugInfo__12JUTExceptionFQ212JUTException9EInfoPageUsP9OSContextUlUl
/* 802E35D8  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E35DC  38 80 00 01 */	li r4, 1
/* 802E35E0  48 00 4E 71 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E35E4  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 802E35E8  48 00 03 99 */	bl waitTime__12JUTExceptionFl
lbl_802E35EC:
/* 802E35EC  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802E35F0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 802E35F4  41 82 00 34 */	beq lbl_802E3628
/* 802E35F8  7F 23 CB 78 */	mr r3, r25
/* 802E35FC  38 80 00 05 */	li r4, 5
/* 802E3600  7F 45 D3 78 */	mr r5, r26
/* 802E3604  7F 66 DB 78 */	mr r6, r27
/* 802E3608  7F 87 E3 78 */	mr r7, r28
/* 802E360C  7F A8 EB 78 */	mr r8, r29
/* 802E3610  4B FF F8 61 */	bl printDebugInfo__12JUTExceptionFQ212JUTException9EInfoPageUsP9OSContextUlUl
/* 802E3614  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E3618  38 80 00 01 */	li r4, 1
/* 802E361C  48 00 4E 35 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E3620  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 802E3624  48 00 03 5D */	bl waitTime__12JUTExceptionFl
lbl_802E3628:
/* 802E3628  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802E362C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802E3630  41 82 00 34 */	beq lbl_802E3664
/* 802E3634  7F 23 CB 78 */	mr r3, r25
/* 802E3638  38 80 00 04 */	li r4, 4
/* 802E363C  7F 45 D3 78 */	mr r5, r26
/* 802E3640  7F 66 DB 78 */	mr r6, r27
/* 802E3644  7F 87 E3 78 */	mr r7, r28
/* 802E3648  7F A8 EB 78 */	mr r8, r29
/* 802E364C  4B FF F8 25 */	bl printDebugInfo__12JUTExceptionFQ212JUTException9EInfoPageUsP9OSContextUlUl
/* 802E3650  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E3654  38 80 00 01 */	li r4, 1
/* 802E3658  48 00 4D F9 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E365C  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 802E3660  48 00 03 21 */	bl waitTime__12JUTExceptionFl
lbl_802E3664:
/* 802E3664  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802E3668  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 802E366C  41 82 00 34 */	beq lbl_802E36A0
/* 802E3670  7F 23 CB 78 */	mr r3, r25
/* 802E3674  38 80 00 02 */	li r4, 2
/* 802E3678  7F 45 D3 78 */	mr r5, r26
/* 802E367C  7F 66 DB 78 */	mr r6, r27
/* 802E3680  7F 87 E3 78 */	mr r7, r28
/* 802E3684  7F A8 EB 78 */	mr r8, r29
/* 802E3688  4B FF F7 E9 */	bl printDebugInfo__12JUTExceptionFQ212JUTException9EInfoPageUsP9OSContextUlUl
/* 802E368C  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E3690  38 80 00 01 */	li r4, 1
/* 802E3694  48 00 4D BD */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E3698  80 79 00 8C */	lwz r3, 0x8c(r25)
/* 802E369C  48 00 02 E5 */	bl waitTime__12JUTExceptionFl
lbl_802E36A0:
/* 802E36A0  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 802E36A4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 802E36A8  41 82 00 34 */	beq lbl_802E36DC
/* 802E36AC  7F 23 CB 78 */	mr r3, r25
/* 802E36B0  38 80 00 03 */	li r4, 3
/* 802E36B4  7F 45 D3 78 */	mr r5, r26
/* 802E36B8  7F 66 DB 78 */	mr r6, r27
/* 802E36BC  7F 87 E3 78 */	mr r7, r28
/* 802E36C0  7F A8 EB 78 */	mr r8, r29
/* 802E36C4  4B FF F7 AD */	bl printDebugInfo__12JUTExceptionFQ212JUTException9EInfoPageUsP9OSContextUlUl
/* 802E36C8  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E36CC  38 80 00 01 */	li r4, 1
/* 802E36D0  48 00 4D 81 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E36D4  80 79 00 90 */	lwz r3, 0x90(r25)
/* 802E36D8  48 00 02 A9 */	bl waitTime__12JUTExceptionFl
lbl_802E36DC:
/* 802E36DC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E36E0  38 97 04 C7 */	addi r4, r23, 0x4c7
/* 802E36E4  48 00 45 55 */	bl print__10JUTConsoleFPCc
/* 802E36E8  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E36EC  38 80 00 01 */	li r4, 1
/* 802E36F0  48 00 4D 61 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E36F4  2C 1E 00 00 */	cmpwi r30, 0
/* 802E36F8  40 82 00 40 */	bne lbl_802E3738
/* 802E36FC  80 0D 8F 90 */	lwz r0, sPostUserCallback__12JUTException(r13)
/* 802E3700  28 00 00 00 */	cmplwi r0, 0
/* 802E3704  41 82 00 34 */	beq lbl_802E3738
/* 802E3708  48 05 A0 01 */	bl OSEnableInterrupts
/* 802E370C  7C 76 1B 78 */	mr r22, r3
/* 802E3710  3B C0 00 01 */	li r30, 1
/* 802E3714  7F 43 D3 78 */	mr r3, r26
/* 802E3718  7F 64 DB 78 */	mr r4, r27
/* 802E371C  7F 85 E3 78 */	mr r5, r28
/* 802E3720  7F A6 EB 78 */	mr r6, r29
/* 802E3724  81 8D 8F 90 */	lwz r12, sPostUserCallback__12JUTException(r13)
/* 802E3728  7D 89 03 A6 */	mtctr r12
/* 802E372C  4E 80 04 21 */	bctrl 
/* 802E3730  7E C3 B3 78 */	mr r3, r22
/* 802E3734  48 05 9F E9 */	bl OSRestoreInterrupts
lbl_802E3738:
/* 802E3738  80 19 00 98 */	lwz r0, 0x98(r25)
/* 802E373C  28 00 00 00 */	cmplwi r0, 0
/* 802E3740  41 82 00 20 */	beq lbl_802E3760
/* 802E3744  28 18 00 00 */	cmplwi r24, 0
/* 802E3748  41 82 00 18 */	beq lbl_802E3760
/* 802E374C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E3750  80 03 00 58 */	lwz r0, 0x58(r3)
/* 802E3754  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 802E3758  90 03 00 58 */	stw r0, 0x58(r3)
/* 802E375C  4B FF FE 28 */	b lbl_802E3584
lbl_802E3760:
/* 802E3760  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802E3764  40 82 01 44 */	bne lbl_802E38A8
/* 802E3768  48 05 9F A1 */	bl OSEnableInterrupts
/* 802E376C  3A C0 00 00 */	li r22, 0
/* 802E3770  3A E0 00 00 */	li r23, 0
lbl_802E3774:
/* 802E3774  7F 23 CB 78 */	mr r3, r25
/* 802E3778  38 81 00 08 */	addi r4, r1, 8
/* 802E377C  38 A1 00 0C */	addi r5, r1, 0xc
/* 802E3780  4B FF F7 D5 */	bl readPad__12JUTExceptionFPUlPUl
/* 802E3784  38 60 00 00 */	li r3, 0
/* 802E3788  80 01 00 08 */	lwz r0, 8(r1)
/* 802E378C  28 00 01 00 */	cmplwi r0, 0x100
/* 802E3790  40 82 00 14 */	bne lbl_802E37A4
/* 802E3794  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E3798  80 83 00 24 */	lwz r4, 0x24(r3)
/* 802E379C  48 00 49 0D */	bl scroll__10JUTConsoleFi
/* 802E37A0  38 60 00 01 */	li r3, 1
lbl_802E37A4:
/* 802E37A4  80 01 00 08 */	lwz r0, 8(r1)
/* 802E37A8  28 00 02 00 */	cmplwi r0, 0x200
/* 802E37AC  40 82 00 18 */	bne lbl_802E37C4
/* 802E37B0  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E37B4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E37B8  7C 80 00 D0 */	neg r4, r0
/* 802E37BC  48 00 48 ED */	bl scroll__10JUTConsoleFi
/* 802E37C0  38 60 00 01 */	li r3, 1
lbl_802E37C4:
/* 802E37C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E37C8  28 00 00 08 */	cmplwi r0, 8
/* 802E37CC  40 82 00 4C */	bne lbl_802E3818
/* 802E37D0  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E37D4  2C 16 00 03 */	cmpwi r22, 3
/* 802E37D8  40 80 00 0C */	bge lbl_802E37E4
/* 802E37DC  38 80 FF FF */	li r4, -1
/* 802E37E0  48 00 00 24 */	b lbl_802E3804
lbl_802E37E4:
/* 802E37E4  2C 16 00 05 */	cmpwi r22, 5
/* 802E37E8  40 80 00 0C */	bge lbl_802E37F4
/* 802E37EC  38 80 FF FE */	li r4, -2
/* 802E37F0  48 00 00 14 */	b lbl_802E3804
lbl_802E37F4:
/* 802E37F4  2C 16 00 07 */	cmpwi r22, 7
/* 802E37F8  38 80 FF F8 */	li r4, -8
/* 802E37FC  40 80 00 08 */	bge lbl_802E3804
/* 802E3800  38 80 FF FC */	li r4, -4
lbl_802E3804:
/* 802E3804  48 00 48 A5 */	bl scroll__10JUTConsoleFi
/* 802E3808  38 60 00 01 */	li r3, 1
/* 802E380C  3A E0 00 00 */	li r23, 0
/* 802E3810  3A D6 00 01 */	addi r22, r22, 1
/* 802E3814  48 00 00 5C */	b lbl_802E3870
lbl_802E3818:
/* 802E3818  28 00 00 04 */	cmplwi r0, 4
/* 802E381C  40 82 00 4C */	bne lbl_802E3868
/* 802E3820  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E3824  2C 17 00 03 */	cmpwi r23, 3
/* 802E3828  40 80 00 0C */	bge lbl_802E3834
/* 802E382C  38 80 00 01 */	li r4, 1
/* 802E3830  48 00 00 24 */	b lbl_802E3854
lbl_802E3834:
/* 802E3834  2C 17 00 05 */	cmpwi r23, 5
/* 802E3838  40 80 00 0C */	bge lbl_802E3844
/* 802E383C  38 80 00 02 */	li r4, 2
/* 802E3840  48 00 00 14 */	b lbl_802E3854
lbl_802E3844:
/* 802E3844  2C 17 00 07 */	cmpwi r23, 7
/* 802E3848  38 80 00 08 */	li r4, 8
/* 802E384C  40 80 00 08 */	bge lbl_802E3854
/* 802E3850  38 80 00 04 */	li r4, 4
lbl_802E3854:
/* 802E3854  48 00 48 55 */	bl scroll__10JUTConsoleFi
/* 802E3858  38 60 00 01 */	li r3, 1
/* 802E385C  3A C0 00 00 */	li r22, 0
/* 802E3860  3A F7 00 01 */	addi r23, r23, 1
/* 802E3864  48 00 00 0C */	b lbl_802E3870
lbl_802E3868:
/* 802E3868  3A C0 00 00 */	li r22, 0
/* 802E386C  3A E0 00 00 */	li r23, 0
lbl_802E3870:
/* 802E3870  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802E3874  28 00 00 01 */	cmplwi r0, 1
/* 802E3878  40 82 00 24 */	bne lbl_802E389C
/* 802E387C  48 06 A0 41 */	bl VIGetRetraceCount
/* 802E3880  7C 7A 1B 78 */	mr r26, r3
lbl_802E3884:
/* 802E3884  48 06 A0 39 */	bl VIGetRetraceCount
/* 802E3888  7C 1A 18 40 */	cmplw r26, r3
/* 802E388C  41 82 FF F8 */	beq lbl_802E3884
/* 802E3890  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E3894  38 80 00 01 */	li r4, 1
/* 802E3898  48 00 4B B9 */	bl drawDirect__17JUTConsoleManagerCFb
lbl_802E389C:
/* 802E389C  38 60 00 1E */	li r3, 0x1e
/* 802E38A0  48 00 00 E1 */	bl waitTime__12JUTExceptionFl
/* 802E38A4  4B FF FE D0 */	b lbl_802E3774
lbl_802E38A8:
/* 802E38A8  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E38AC  80 03 00 24 */	lwz r0, 0x24(r3)
/* 802E38B0  7C 80 00 D0 */	neg r4, r0
/* 802E38B4  48 00 47 F5 */	bl scroll__10JUTConsoleFi
/* 802E38B8  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E38BC  38 80 00 01 */	li r4, 1
/* 802E38C0  48 00 4B 91 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E38C4  38 60 07 D0 */	li r3, 0x7d0
/* 802E38C8  48 00 00 B9 */	bl waitTime__12JUTExceptionFl
lbl_802E38CC:
/* 802E38CC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E38D0  82 C3 00 48 */	lwz r22, 0x48(r3)
/* 802E38D4  48 00 00 54 */	b lbl_802E3928
lbl_802E38D8:
/* 802E38D8  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E38DC  38 80 00 01 */	li r4, 1
/* 802E38E0  48 00 47 C9 */	bl scroll__10JUTConsoleFi
/* 802E38E4  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 802E38E8  38 80 00 01 */	li r4, 1
/* 802E38EC  48 00 4B 65 */	bl drawDirect__17JUTConsoleManagerCFb
/* 802E38F0  83 0D 8F 9C */	lwz r24, sConsole__12JUTException(r13)
/* 802E38F4  82 F8 00 48 */	lwz r23, 0x48(r24)
/* 802E38F8  7F 03 C3 78 */	mr r3, r24
/* 802E38FC  48 00 48 AD */	bl getLineOffset__10JUTConsoleCFv
/* 802E3900  7C 79 1B 78 */	mr r25, r3
/* 802E3904  7F 03 C3 78 */	mr r3, r24
/* 802E3908  48 00 48 7D */	bl getUsedLine__10JUTConsoleCFv
/* 802E390C  7C 77 18 50 */	subf r3, r23, r3
/* 802E3910  38 03 00 01 */	addi r0, r3, 1
/* 802E3914  7C 00 C8 40 */	cmplw r0, r25
/* 802E3918  40 81 00 18 */	ble lbl_802E3930
/* 802E391C  38 60 00 14 */	li r3, 0x14
/* 802E3920  48 00 00 61 */	bl waitTime__12JUTExceptionFl
/* 802E3924  3A D6 FF FF */	addi r22, r22, -1
lbl_802E3928:
/* 802E3928  28 16 00 00 */	cmplwi r22, 0
/* 802E392C  40 82 FF AC */	bne lbl_802E38D8
lbl_802E3930:
/* 802E3930  38 60 0B B8 */	li r3, 0xbb8
/* 802E3934  48 00 00 4D */	bl waitTime__12JUTExceptionFl
/* 802E3938  83 0D 8F 9C */	lwz r24, sConsole__12JUTException(r13)
/* 802E393C  82 F8 00 48 */	lwz r23, 0x48(r24)
/* 802E3940  7F 03 C3 78 */	mr r3, r24
/* 802E3944  48 00 48 65 */	bl getLineOffset__10JUTConsoleCFv
/* 802E3948  7C 79 1B 78 */	mr r25, r3
/* 802E394C  7F 03 C3 78 */	mr r3, r24
/* 802E3950  48 00 48 35 */	bl getUsedLine__10JUTConsoleCFv
/* 802E3954  7C 77 18 50 */	subf r3, r23, r3
/* 802E3958  38 03 00 01 */	addi r0, r3, 1
/* 802E395C  7C 00 C8 40 */	cmplw r0, r25
/* 802E3960  40 81 FF 48 */	ble lbl_802E38A8
/* 802E3964  4B FF FF 68 */	b lbl_802E38CC
lbl_802E3968:
/* 802E3968  39 61 00 40 */	addi r11, r1, 0x40
/* 802E396C  48 07 E8 A1 */	bl _restgpr_22
/* 802E3970  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E3974  7C 08 03 A6 */	mtlr r0
/* 802E3978  38 21 00 40 */	addi r1, r1, 0x40
/* 802E397C  4E 80 00 20 */	blr 
