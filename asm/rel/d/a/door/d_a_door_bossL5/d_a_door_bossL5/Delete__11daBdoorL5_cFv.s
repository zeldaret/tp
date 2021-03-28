lbl_80672374:
/* 80672374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80672378  7C 08 02 A6 */	mflr r0
/* 8067237C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80672380  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80672384  7C 7F 1B 78 */	mr r31, r3
/* 80672388  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 8067238C  28 00 00 00 */	cmplwi r0, 0
/* 80672390  41 82 00 28 */	beq lbl_806723B8
/* 80672394  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80672398  4B BF 5E 3C */	b ChkUsed__9cBgW_BgIdCFv
/* 8067239C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806723A0  41 82 00 18 */	beq lbl_806723B8
/* 806723A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806723A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806723AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806723B0  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 806723B4  4B A0 1E 9C */	b Release__4cBgSFP9dBgW_Base
lbl_806723B8:
/* 806723B8  7F E3 FB 78 */	mr r3, r31
/* 806723BC  4B FF E8 7D */	bl getArcName__11daBdoorL5_cFv
/* 806723C0  7C 64 1B 78 */	mr r4, r3
/* 806723C4  38 7F 05 68 */	addi r3, r31, 0x568
/* 806723C8  4B 9B AC 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806723CC  7F E3 FB 78 */	mr r3, r31
/* 806723D0  4B FF E8 A5 */	bl getAnmArcName__11daBdoorL5_cFv
/* 806723D4  7C 64 1B 78 */	mr r4, r3
/* 806723D8  38 7F 05 78 */	addi r3, r31, 0x578
/* 806723DC  4B 9B AC 2C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806723E0  7F E3 FB 78 */	mr r3, r31
/* 806723E4  4B FF E8 61 */	bl getAlwaysArcName__11daBdoorL5_cFv
/* 806723E8  7C 64 1B 78 */	mr r4, r3
/* 806723EC  38 7F 05 70 */	addi r3, r31, 0x570
/* 806723F0  4B 9B AC 18 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806723F4  38 60 00 01 */	li r3, 1
/* 806723F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806723FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80672400  7C 08 03 A6 */	mtlr r0
/* 80672404  38 21 00 10 */	addi r1, r1, 0x10
/* 80672408  4E 80 00 20 */	blr 
