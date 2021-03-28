lbl_80670804:
/* 80670804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670808  7C 08 02 A6 */	mflr r0
/* 8067080C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80670814  7C 7F 1B 78 */	mr r31, r3
/* 80670818  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 8067081C  28 00 00 00 */	cmplwi r0, 0
/* 80670820  41 82 00 28 */	beq lbl_80670848
/* 80670824  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80670828  4B BF 79 AC */	b ChkUsed__9cBgW_BgIdCFv
/* 8067082C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80670830  41 82 00 18 */	beq lbl_80670848
/* 80670834  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80670838  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067083C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80670840  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80670844  4B A0 3A 0C */	b Release__4cBgSFP9dBgW_Base
lbl_80670848:
/* 80670848  7F E3 FB 78 */	mr r3, r31
/* 8067084C  4B FF EB CD */	bl getArcName__9daBdoor_cFv
/* 80670850  7C 64 1B 78 */	mr r4, r3
/* 80670854  38 7F 05 68 */	addi r3, r31, 0x568
/* 80670858  4B 9B C7 B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8067085C  38 60 00 01 */	li r3, 1
/* 80670860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670868  7C 08 03 A6 */	mtlr r0
/* 8067086C  38 21 00 10 */	addi r1, r1, 0x10
/* 80670870  4E 80 00 20 */	blr 
