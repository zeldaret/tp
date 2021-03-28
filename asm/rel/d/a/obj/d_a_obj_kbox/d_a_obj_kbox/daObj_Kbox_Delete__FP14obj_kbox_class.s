lbl_80C3EA2C:
/* 80C3EA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3EA30  7C 08 02 A6 */	mflr r0
/* 80C3EA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3EA38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3EA3C  7C 7F 1B 78 */	mr r31, r3
/* 80C3EA40  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C3EA44  3C 80 80 C4 */	lis r4, stringBase0@ha
/* 80C3EA48  38 84 F1 08 */	addi r4, r4, stringBase0@l
/* 80C3EA4C  38 84 00 18 */	addi r4, r4, 0x18
/* 80C3EA50  4B 3E E5 B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C3EA54  88 1F 09 EC */	lbz r0, 0x9ec(r31)
/* 80C3EA58  28 00 00 00 */	cmplwi r0, 0
/* 80C3EA5C  41 82 00 10 */	beq lbl_80C3EA6C
/* 80C3EA60  38 00 00 00 */	li r0, 0
/* 80C3EA64  3C 60 80 C4 */	lis r3, struct_80C3F284+0x1@ha
/* 80C3EA68  98 03 F2 85 */	stb r0, struct_80C3F284+0x1@l(r3)
lbl_80C3EA6C:
/* 80C3EA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3EA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3EA74  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C3EA78  80 9F 09 A4 */	lwz r4, 0x9a4(r31)
/* 80C3EA7C  4B 43 57 D4 */	b Release__4cBgSFP9dBgW_Base
/* 80C3EA80  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C3EA84  28 00 00 00 */	cmplwi r0, 0
/* 80C3EA88  41 82 00 0C */	beq lbl_80C3EA94
/* 80C3EA8C  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C3EA90  4B 67 F5 68 */	b deleteObject__14Z2SoundObjBaseFv
lbl_80C3EA94:
/* 80C3EA94  38 60 00 01 */	li r3, 1
/* 80C3EA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3EA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3EAA0  7C 08 03 A6 */	mtlr r0
/* 80C3EAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3EAA8  4E 80 00 20 */	blr 
