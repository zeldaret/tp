lbl_8002FB20:
/* 8002FB20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002FB24  7C 08 02 A6 */	mflr r0
/* 8002FB28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002FB2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8002FB30  48 33 26 AD */	bl _savegpr_29
/* 8002FB34  7C 7D 1B 78 */	mr r29, r3
/* 8002FB38  7C 9E 23 78 */	mr r30, r4
/* 8002FB3C  7C BF 2B 78 */	mr r31, r5
/* 8002FB40  48 23 6C 6D */	bl cPhs_Handler__FP30request_of_phase_process_classPPFPv_iPv
/* 8002FB44  2C 03 00 02 */	cmpwi r3, 2
/* 8002FB48  41 82 00 10 */	beq lbl_8002FB58
/* 8002FB4C  40 80 00 1C */	bge lbl_8002FB68
/* 8002FB50  48 00 00 18 */	b lbl_8002FB68
/* 8002FB54  48 00 00 14 */	b lbl_8002FB68
lbl_8002FB58:
/* 8002FB58  7F A3 EB 78 */	mr r3, r29
/* 8002FB5C  7F C4 F3 78 */	mr r4, r30
/* 8002FB60  7F E5 FB 78 */	mr r5, r31
/* 8002FB64  4B FF FF BD */	bl dComLbG_PhaseHandler__FP30request_of_phase_process_classPPFPv_iPv
lbl_8002FB68:
/* 8002FB68  39 61 00 20 */	addi r11, r1, 0x20
/* 8002FB6C  48 33 26 BD */	bl _restgpr_29
/* 8002FB70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002FB74  7C 08 03 A6 */	mtlr r0
/* 8002FB78  38 21 00 20 */	addi r1, r1, 0x20
/* 8002FB7C  4E 80 00 20 */	blr 
