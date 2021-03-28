lbl_80981140:
/* 80981140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80981144  7C 08 02 A6 */	mflr r0
/* 80981148  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098114C  39 61 00 20 */	addi r11, r1, 0x20
/* 80981150  4B 9E 10 88 */	b _savegpr_28
/* 80981154  7C 7F 1B 78 */	mr r31, r3
/* 80981158  7C 9D 23 78 */	mr r29, r4
/* 8098115C  7C BC 2B 78 */	mr r28, r5
/* 80981160  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80981164  28 00 00 00 */	cmplwi r0, 0
/* 80981168  41 82 00 2C */	beq lbl_80981194
/* 8098116C  38 7F 0D E4 */	addi r3, r31, 0xde4
/* 80981170  57 A0 10 3A */	slwi r0, r29, 2
/* 80981174  3C 80 80 98 */	lis r4, l_resNameTbl@ha
/* 80981178  38 84 79 7C */	addi r4, r4, l_resNameTbl@l
/* 8098117C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80981180  80 84 00 04 */	lwz r4, 4(r4)
/* 80981184  4B 6A BD 38 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80981188  2C 03 00 04 */	cmpwi r3, 4
/* 8098118C  41 82 00 30 */	beq lbl_809811BC
/* 80981190  48 00 00 D8 */	b lbl_80981268
lbl_80981194:
/* 80981194  38 7F 0D E4 */	addi r3, r31, 0xde4
/* 80981198  57 A0 10 3A */	slwi r0, r29, 2
/* 8098119C  3C 80 80 98 */	lis r4, l_resNameTbl@ha
/* 809811A0  38 84 79 7C */	addi r4, r4, l_resNameTbl@l
/* 809811A4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809811A8  80 84 00 00 */	lwz r4, 0(r4)
/* 809811AC  4B 6A BD 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809811B0  2C 03 00 04 */	cmpwi r3, 4
/* 809811B4  41 82 00 08 */	beq lbl_809811BC
/* 809811B8  48 00 00 B0 */	b lbl_80981268
lbl_809811BC:
/* 809811BC  38 7F 0D EC */	addi r3, r31, 0xdec
/* 809811C0  57 BD 10 3A */	slwi r29, r29, 2
/* 809811C4  3C 80 80 98 */	lis r4, l_resNameTbl@ha
/* 809811C8  3B C4 79 7C */	addi r30, r4, l_resNameTbl@l
/* 809811CC  7C 9E E8 2E */	lwzx r4, r30, r29
/* 809811D0  80 84 00 08 */	lwz r4, 8(r4)
/* 809811D4  4B 6A BC E8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809811D8  7C 64 1B 78 */	mr r4, r3
/* 809811DC  2C 04 00 04 */	cmpwi r4, 4
/* 809811E0  41 82 00 08 */	beq lbl_809811E8
/* 809811E4  48 00 00 84 */	b lbl_80981268
lbl_809811E8:
/* 809811E8  2C 1C 00 00 */	cmpwi r28, 0
/* 809811EC  40 82 00 10 */	bne lbl_809811FC
/* 809811F0  88 1F 0E 51 */	lbz r0, 0xe51(r31)
/* 809811F4  28 00 00 01 */	cmplwi r0, 1
/* 809811F8  40 82 00 6C */	bne lbl_80981264
lbl_809811FC:
/* 809811FC  38 7F 0D F4 */	addi r3, r31, 0xdf4
/* 80981200  7C 9E E8 2E */	lwzx r4, r30, r29
/* 80981204  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80981208  4B 6A BC B4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8098120C  2C 03 00 04 */	cmpwi r3, 4
/* 80981210  41 82 00 08 */	beq lbl_80981218
/* 80981214  48 00 00 54 */	b lbl_80981268
lbl_80981218:
/* 80981218  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 8098121C  28 00 00 00 */	cmplwi r0, 0
/* 80981220  41 82 00 24 */	beq lbl_80981244
/* 80981224  38 7F 0D FC */	addi r3, r31, 0xdfc
/* 80981228  7C 9E E8 2E */	lwzx r4, r30, r29
/* 8098122C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80981230  4B 6A BC 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80981234  7C 64 1B 78 */	mr r4, r3
/* 80981238  2C 04 00 04 */	cmpwi r4, 4
/* 8098123C  41 82 00 28 */	beq lbl_80981264
/* 80981240  48 00 00 28 */	b lbl_80981268
lbl_80981244:
/* 80981244  38 7F 0D FC */	addi r3, r31, 0xdfc
/* 80981248  7C 9E E8 2E */	lwzx r4, r30, r29
/* 8098124C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80981250  4B 6A BC 6C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80981254  7C 64 1B 78 */	mr r4, r3
/* 80981258  2C 04 00 04 */	cmpwi r4, 4
/* 8098125C  41 82 00 08 */	beq lbl_80981264
/* 80981260  48 00 00 08 */	b lbl_80981268
lbl_80981264:
/* 80981264  7C 83 23 78 */	mr r3, r4
lbl_80981268:
/* 80981268  39 61 00 20 */	addi r11, r1, 0x20
/* 8098126C  4B 9E 0F B8 */	b _restgpr_28
/* 80981270  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80981274  7C 08 03 A6 */	mtlr r0
/* 80981278  38 21 00 20 */	addi r1, r1, 0x20
/* 8098127C  4E 80 00 20 */	blr 
