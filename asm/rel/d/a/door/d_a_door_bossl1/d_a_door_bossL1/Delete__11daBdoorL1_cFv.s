lbl_804E48BC:
/* 804E48BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E48C0  7C 08 02 A6 */	mflr r0
/* 804E48C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E48C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E48CC  7C 7F 1B 78 */	mr r31, r3
/* 804E48D0  4B FF F8 35 */	bl deleteEmitter__11daBdoorL1_cFv
/* 804E48D4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804E48D8  28 00 00 00 */	cmplwi r0, 0
/* 804E48DC  41 82 00 28 */	beq lbl_804E4904
/* 804E48E0  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 804E48E4  4B D8 38 F1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 804E48E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E48EC  41 82 00 18 */	beq lbl_804E4904
/* 804E48F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E48F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E48F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E48FC  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 804E4900  4B B8 F9 51 */	bl Release__4cBgSFP9dBgW_Base
lbl_804E4904:
/* 804E4904  7F E3 FB 78 */	mr r3, r31
/* 804E4908  4B FF D6 9D */	bl getArcName__11daBdoorL1_cFv
/* 804E490C  7C 64 1B 78 */	mr r4, r3
/* 804E4910  38 7F 05 68 */	addi r3, r31, 0x568
/* 804E4914  4B B4 86 F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804E4918  7F E3 FB 78 */	mr r3, r31
/* 804E491C  4B FF D8 91 */	bl getAlwaysArcName__11daBdoorL1_cFv
/* 804E4920  7C 64 1B 78 */	mr r4, r3
/* 804E4924  38 7F 05 70 */	addi r3, r31, 0x570
/* 804E4928  4B B4 86 E1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804E492C  7F E3 FB 78 */	mr r3, r31
/* 804E4930  4B FF D7 31 */	bl getAnmArcName__11daBdoorL1_cFv
/* 804E4934  7C 64 1B 78 */	mr r4, r3
/* 804E4938  38 7F 05 78 */	addi r3, r31, 0x578
/* 804E493C  4B B4 86 CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804E4940  38 60 00 01 */	li r3, 1
/* 804E4944  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E4948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E494C  7C 08 03 A6 */	mtlr r0
/* 804E4950  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4954  4E 80 00 20 */	blr 
