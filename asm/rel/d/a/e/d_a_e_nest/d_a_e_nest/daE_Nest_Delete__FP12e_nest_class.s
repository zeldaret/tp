lbl_80503E2C:
/* 80503E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80503E30  7C 08 02 A6 */	mflr r0
/* 80503E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80503E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80503E3C  7C 7F 1B 78 */	mr r31, r3
/* 80503E40  38 7F 05 68 */	addi r3, r31, 0x568
/* 80503E44  3C 80 80 50 */	lis r4, stringBase0@ha
/* 80503E48  38 84 47 EC */	addi r4, r4, stringBase0@l
/* 80503E4C  38 84 00 08 */	addi r4, r4, 8
/* 80503E50  4B B2 91 B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80503E54  88 1F 0C F4 */	lbz r0, 0xcf4(r31)
/* 80503E58  28 00 00 00 */	cmplwi r0, 0
/* 80503E5C  41 82 00 10 */	beq lbl_80503E6C
/* 80503E60  38 00 00 00 */	li r0, 0
/* 80503E64  3C 60 80 50 */	lis r3, data_80504950@ha
/* 80503E68  98 03 49 50 */	stb r0, data_80504950@l(r3)
lbl_80503E6C:
/* 80503E6C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80503E70  28 00 00 00 */	cmplwi r0, 0
/* 80503E74  41 82 00 14 */	beq lbl_80503E88
/* 80503E78  38 7F 0A F8 */	addi r3, r31, 0xaf8
/* 80503E7C  4B DB A1 7C */	b deleteObject__14Z2SoundObjBaseFv
/* 80503E80  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 80503E84  4B DB A1 74 */	b deleteObject__14Z2SoundObjBaseFv
lbl_80503E88:
/* 80503E88  38 60 00 01 */	li r3, 1
/* 80503E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80503E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80503E94  7C 08 03 A6 */	mtlr r0
/* 80503E98  38 21 00 10 */	addi r1, r1, 0x10
/* 80503E9C  4E 80 00 20 */	blr 
