lbl_80A0DD78:
/* 80A0DD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0DD7C  7C 08 02 A6 */	mflr r0
/* 80A0DD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0DD84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0DD88  7C 7F 1B 78 */	mr r31, r3
/* 80A0DD8C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80A0DD90  3C 80 80 A1 */	lis r4, stringBase0@ha
/* 80A0DD94  38 84 E0 CC */	addi r4, r4, stringBase0@l
/* 80A0DD98  4B 61 F2 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A0DD9C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80A0DDA0  28 00 00 00 */	cmplwi r0, 0
/* 80A0DDA4  41 82 00 0C */	beq lbl_80A0DDB0
/* 80A0DDA8  38 7F 05 74 */	addi r3, r31, 0x574
/* 80A0DDAC  4B 8B 02 4C */	b deleteObject__14Z2SoundObjBaseFv
lbl_80A0DDB0:
/* 80A0DDB0  38 60 00 01 */	li r3, 1
/* 80A0DDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0DDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0DDBC  7C 08 03 A6 */	mtlr r0
/* 80A0DDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0DDC4  4E 80 00 20 */	blr 
