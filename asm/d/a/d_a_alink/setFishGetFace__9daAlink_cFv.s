lbl_800F4490:
/* 800F4490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F4494  7C 08 02 A6 */	mflr r0
/* 800F4498  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F449C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F44A0  7C 7F 1B 78 */	mr r31, r3
/* 800F44A4  88 03 2F C8 */	lbz r0, 0x2fc8(r3)
/* 800F44A8  28 00 00 01 */	cmplwi r0, 1
/* 800F44AC  40 82 00 1C */	bne lbl_800F44C8
/* 800F44B0  38 80 01 40 */	li r4, 0x140
/* 800F44B4  38 A0 00 01 */	li r5, 1
/* 800F44B8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F44BC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F44C0  4B FB AF F1 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F44C4  48 00 00 8C */	b lbl_800F4550
lbl_800F44C8:
/* 800F44C8  28 00 00 02 */	cmplwi r0, 2
/* 800F44CC  40 82 00 28 */	bne lbl_800F44F4
/* 800F44D0  38 80 00 7A */	li r4, 0x7a
/* 800F44D4  4B FB B5 D5 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800F44D8  7F E3 FB 78 */	mr r3, r31
/* 800F44DC  38 80 01 43 */	li r4, 0x143
/* 800F44E0  38 A0 00 01 */	li r5, 1
/* 800F44E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F44E8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F44EC  4B FB AF C5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F44F0  48 00 00 60 */	b lbl_800F4550
lbl_800F44F4:
/* 800F44F4  28 00 00 03 */	cmplwi r0, 3
/* 800F44F8  40 82 00 28 */	bne lbl_800F4520
/* 800F44FC  38 80 00 7B */	li r4, 0x7b
/* 800F4500  4B FB B5 A9 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800F4504  7F E3 FB 78 */	mr r3, r31
/* 800F4508  38 80 01 46 */	li r4, 0x146
/* 800F450C  38 A0 00 01 */	li r5, 1
/* 800F4510  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F4514  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F4518  4B FB AF 99 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F451C  48 00 00 34 */	b lbl_800F4550
lbl_800F4520:
/* 800F4520  28 00 00 04 */	cmplwi r0, 4
/* 800F4524  40 82 00 28 */	bne lbl_800F454C
/* 800F4528  38 80 00 7C */	li r4, 0x7c
/* 800F452C  4B FB B5 7D */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800F4530  7F E3 FB 78 */	mr r3, r31
/* 800F4534  38 80 01 49 */	li r4, 0x149
/* 800F4538  38 A0 00 01 */	li r5, 1
/* 800F453C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F4540  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F4544  4B FB AF 6D */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F4548  48 00 00 08 */	b lbl_800F4550
lbl_800F454C:
/* 800F454C  4B FB B7 71 */	bl resetFacePriAnime__9daAlink_cFv
lbl_800F4550:
/* 800F4550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F4554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F4558  7C 08 03 A6 */	mtlr r0
/* 800F455C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F4560  4E 80 00 20 */	blr 
