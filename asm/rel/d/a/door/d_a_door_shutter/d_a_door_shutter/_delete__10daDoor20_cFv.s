lbl_804647BC:
/* 804647BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804647C0  7C 08 02 A6 */	mflr r0
/* 804647C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804647C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804647CC  7C 7F 1B 78 */	mr r31, r3
/* 804647D0  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 804647D4  28 00 00 00 */	cmplwi r0, 0
/* 804647D8  41 82 00 28 */	beq lbl_80464800
/* 804647DC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 804647E0  4B E0 39 F5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 804647E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804647E8  41 82 00 18 */	beq lbl_80464800
/* 804647EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804647F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804647F4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804647F8  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 804647FC  4B C0 FA 55 */	bl Release__4cBgSFP9dBgW_Base
lbl_80464800:
/* 80464800  7F E3 FB 78 */	mr r3, r31
/* 80464804  48 00 02 E1 */	bl deleteKey__10daDoor20_cFv
/* 80464808  7F E3 FB 78 */	mr r3, r31
/* 8046480C  4B FF C3 89 */	bl getAlwaysArcName__10daDoor20_cFv
/* 80464810  7C 64 1B 78 */	mr r4, r3
/* 80464814  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80464818  4B BC 87 F1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8046481C  7F E3 FB 78 */	mr r3, r31
/* 80464820  4B FF C3 85 */	bl getArcName__10daDoor20_cFv
/* 80464824  28 03 00 00 */	cmplwi r3, 0
/* 80464828  41 82 00 18 */	beq lbl_80464840
/* 8046482C  7F E3 FB 78 */	mr r3, r31
/* 80464830  4B FF C3 75 */	bl getArcName__10daDoor20_cFv
/* 80464834  7C 64 1B 78 */	mr r4, r3
/* 80464838  38 7F 05 74 */	addi r3, r31, 0x574
/* 8046483C  4B BC 87 CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80464840:
/* 80464840  38 60 00 01 */	li r3, 1
/* 80464844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046484C  7C 08 03 A6 */	mtlr r0
/* 80464850  38 21 00 10 */	addi r1, r1, 0x10
/* 80464854  4E 80 00 20 */	blr 
