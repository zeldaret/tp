lbl_80022FE8:
/* 80022FE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022FEC  7C 08 02 A6 */	mflr r0
/* 80022FF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80022FF8  48 33 F1 E5 */	bl _savegpr_29
/* 80022FFC  7C 9D 23 78 */	mr r29, r4
/* 80023000  7D 1E 43 78 */	mr r30, r8
/* 80023004  2C 1D 00 02 */	cmpwi r29, 2
/* 80023008  41 82 00 48 */	beq lbl_80023050
/* 8002300C  40 80 00 14 */	bge lbl_80023020
/* 80023010  2C 1D 00 00 */	cmpwi r29, 0
/* 80023014  41 82 00 18 */	beq lbl_8002302C
/* 80023018  40 80 00 28 */	bge lbl_80023040
/* 8002301C  48 00 00 48 */	b lbl_80023064
lbl_80023020:
/* 80023020  2C 1D 00 04 */	cmpwi r29, 4
/* 80023024  41 82 00 40 */	beq lbl_80023064
/* 80023028  48 00 00 3C */	b lbl_80023064
lbl_8002302C:
/* 8002302C  7C C4 33 78 */	mr r4, r6
/* 80023030  7C E5 3B 78 */	mr r5, r7
/* 80023034  4B FF FF 09 */	bl fpcNdRq_CreateNode__FUlsPv
/* 80023038  7C 7F 1B 78 */	mr r31, r3
/* 8002303C  48 00 00 28 */	b lbl_80023064
lbl_80023040:
/* 80023040  7C A4 2B 78 */	mr r4, r5
/* 80023044  4B FF FE 6D */	bl fpcNdRq_DeleteNode__FUlP18process_node_class
/* 80023048  7C 7F 1B 78 */	mr r31, r3
/* 8002304C  48 00 00 18 */	b lbl_80023064
lbl_80023050:
/* 80023050  7C A4 2B 78 */	mr r4, r5
/* 80023054  7C C5 33 78 */	mr r5, r6
/* 80023058  7C E6 3B 78 */	mr r6, r7
/* 8002305C  4B FF FD B9 */	bl fpcNdRq_ChangeNode__FUlP18process_node_classsPv
/* 80023060  7C 7F 1B 78 */	mr r31, r3
lbl_80023064:
/* 80023064  28 1F 00 00 */	cmplwi r31, 0
/* 80023068  41 82 00 14 */	beq lbl_8002307C
/* 8002306C  93 BF 00 40 */	stw r29, 0x40(r31)
/* 80023070  93 DF 00 3C */	stw r30, 0x3c(r31)
/* 80023074  7F E3 FB 78 */	mr r3, r31
/* 80023078  4B FF F7 8D */	bl fpcNdRq_ToRequestQ__FP19node_create_request
lbl_8002307C:
/* 8002307C  7F E3 FB 78 */	mr r3, r31
/* 80023080  39 61 00 20 */	addi r11, r1, 0x20
/* 80023084  48 33 F1 A5 */	bl _restgpr_29
/* 80023088  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002308C  7C 08 03 A6 */	mtlr r0
/* 80023090  38 21 00 20 */	addi r1, r1, 0x20
/* 80023094  4E 80 00 20 */	blr 
