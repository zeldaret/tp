lbl_80460550:
/* 80460550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80460554  7C 08 02 A6 */	mflr r0
/* 80460558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046055C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80460560  7C 7F 1B 78 */	mr r31, r3
/* 80460564  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 80460568  28 00 00 00 */	cmplwi r0, 0
/* 8046056C  41 82 00 30 */	beq lbl_8046059C
/* 80460570  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80460574  28 03 00 00 */	cmplwi r3, 0
/* 80460578  41 82 00 24 */	beq lbl_8046059C
/* 8046057C  4B E0 7C 58 */	b ChkUsed__9cBgW_BgIdCFv
/* 80460580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80460584  41 82 00 18 */	beq lbl_8046059C
/* 80460588  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046058C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80460590  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80460594  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 80460598  4B C1 3C B8 */	b Release__4cBgSFP9dBgW_Base
lbl_8046059C:
/* 8046059C  7F E3 FB 78 */	mr r3, r31
/* 804605A0  4B FF E2 E9 */	bl getAlwaysArcName__10daKnob20_cFv
/* 804605A4  7C 64 1B 78 */	mr r4, r3
/* 804605A8  38 7F 05 70 */	addi r3, r31, 0x570
/* 804605AC  4B BC CA 5C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804605B0  7F E3 FB 78 */	mr r3, r31
/* 804605B4  4B FF E2 E5 */	bl getEvArcName__10daKnob20_cFv
/* 804605B8  7C 64 1B 78 */	mr r4, r3
/* 804605BC  38 7F 05 68 */	addi r3, r31, 0x568
/* 804605C0  4B BC CA 48 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804605C4  38 60 00 01 */	li r3, 1
/* 804605C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804605CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804605D0  7C 08 03 A6 */	mtlr r0
/* 804605D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804605D8  4E 80 00 20 */	blr 
