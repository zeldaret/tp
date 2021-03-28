lbl_8001F034:
/* 8001F034  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F038  7C 08 02 A6 */	mflr r0
/* 8001F03C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F040  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F044  48 34 31 8D */	bl _savegpr_26
/* 8001F048  7C 6B 1B 78 */	mr r11, r3
/* 8001F04C  7C 8A 23 78 */	mr r10, r4
/* 8001F050  7C A9 2B 78 */	mr r9, r5
/* 8001F054  7C C0 33 78 */	mr r0, r6
/* 8001F058  7C FA 3B 78 */	mr r26, r7
/* 8001F05C  7D 1B 43 78 */	mr r27, r8
/* 8001F060  3C 60 80 3A */	lis r3, submethod@ha
/* 8001F064  3B E3 38 C8 */	addi r31, r3, submethod@l
/* 8001F068  3B C0 00 00 */	li r30, 0
/* 8001F06C  3B BF 00 10 */	addi r29, r31, 0x10
/* 8001F070  38 60 00 74 */	li r3, 0x74
/* 8001F074  7D 64 5B 78 */	mr r4, r11
/* 8001F078  7D 45 53 78 */	mr r5, r10
/* 8001F07C  7D 26 4B 78 */	mr r6, r9
/* 8001F080  7C 07 03 78 */	mr r7, r0
/* 8001F084  39 1F 00 00 */	addi r8, r31, 0
/* 8001F088  48 00 3F 61 */	bl fpcNdRq_Request__FUliP18process_node_classsPvP32node_create_request_method_class
/* 8001F08C  7C 7C 1B 79 */	or. r28, r3, r3
/* 8001F090  40 82 00 0C */	bne lbl_8001F09C
/* 8001F094  38 60 FF FF */	li r3, -1
/* 8001F098  48 00 00 4C */	b lbl_8001F0E4
lbl_8001F09C:
/* 8001F09C  7F 40 07 34 */	extsh r0, r26
/* 8001F0A0  2C 00 7F FF */	cmpwi r0, 0x7fff
/* 8001F0A4  41 82 00 2C */	beq lbl_8001F0D0
/* 8001F0A8  3B BF 00 30 */	addi r29, r31, 0x30
/* 8001F0AC  7F 43 D3 78 */	mr r3, r26
/* 8001F0B0  7F 64 DB 78 */	mr r4, r27
/* 8001F0B4  4B FF FF 3D */	bl fopScnRq_FadeRequest__FsUs
/* 8001F0B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001F0BC  40 82 00 14 */	bne lbl_8001F0D0
/* 8001F0C0  7F 83 E3 78 */	mr r3, r28
/* 8001F0C4  48 00 39 79 */	bl fpcNdRq_Delete__FP19node_create_request
/* 8001F0C8  38 60 FF FF */	li r3, -1
/* 8001F0CC  48 00 00 18 */	b lbl_8001F0E4
lbl_8001F0D0:
/* 8001F0D0  93 DC 00 64 */	stw r30, 0x64(r28)
/* 8001F0D4  38 7C 00 68 */	addi r3, r28, 0x68
/* 8001F0D8  7F A4 EB 78 */	mr r4, r29
/* 8001F0DC  48 24 75 55 */	bl cPhs_Set__FP30request_of_phase_process_classPPFPv_i
/* 8001F0E0  80 7C 00 44 */	lwz r3, 0x44(r28)
lbl_8001F0E4:
/* 8001F0E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F0E8  48 34 31 35 */	bl _restgpr_26
/* 8001F0EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F0F0  7C 08 03 A6 */	mtlr r0
/* 8001F0F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F0F8  4E 80 00 20 */	blr 
