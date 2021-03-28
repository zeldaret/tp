lbl_804FFB04:
/* 804FFB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFB08  7C 08 02 A6 */	mflr r0
/* 804FFB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFB10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FFB14  7C 7F 1B 78 */	mr r31, r3
/* 804FFB18  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 804FFB1C  3C 80 80 50 */	lis r4, stringBase0@ha
/* 804FFB20  38 84 0C 34 */	addi r4, r4, stringBase0@l
/* 804FFB24  4B B2 D4 E4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 804FFB28  88 1F 12 64 */	lbz r0, 0x1264(r31)
/* 804FFB2C  28 00 00 00 */	cmplwi r0, 0
/* 804FFB30  41 82 00 10 */	beq lbl_804FFB40
/* 804FFB34  38 00 00 00 */	li r0, 0
/* 804FFB38  3C 60 80 50 */	lis r3, data_80500E60@ha
/* 804FFB3C  98 03 0E 60 */	stb r0, data_80500E60@l(r3)
lbl_804FFB40:
/* 804FFB40  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 804FFB44  28 00 00 00 */	cmplwi r0, 0
/* 804FFB48  41 82 00 0C */	beq lbl_804FFB54
/* 804FFB4C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804FFB50  4B B1 17 C0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_804FFB54:
/* 804FFB54  38 60 00 01 */	li r3, 1
/* 804FFB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FFB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFB60  7C 08 03 A6 */	mtlr r0
/* 804FFB64  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFB68  4E 80 00 20 */	blr 
