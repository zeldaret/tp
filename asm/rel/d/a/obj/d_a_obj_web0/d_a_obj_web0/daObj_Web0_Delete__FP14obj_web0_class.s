lbl_80D34B2C:
/* 80D34B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34B30  7C 08 02 A6 */	mflr r0
/* 80D34B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D34B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D34B3C  7C 7F 1B 78 */	mr r31, r3
/* 80D34B40  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D34B44  3C 80 80 D3 */	lis r4, stringBase0@ha
/* 80D34B48  38 84 51 BC */	addi r4, r4, stringBase0@l
/* 80D34B4C  4B 2F 84 BC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D34B50  88 1F 07 39 */	lbz r0, 0x739(r31)
/* 80D34B54  28 00 00 00 */	cmplwi r0, 0
/* 80D34B58  41 82 00 10 */	beq lbl_80D34B68
/* 80D34B5C  38 00 00 00 */	li r0, 0
/* 80D34B60  3C 60 80 D3 */	lis r3, data_80D35290@ha
/* 80D34B64  98 03 52 90 */	stb r0, data_80D35290@l(r3)
lbl_80D34B68:
/* 80D34B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D34B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D34B70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D34B74  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80D34B78  4B 33 F6 D8 */	b Release__4cBgSFP9dBgW_Base
/* 80D34B7C  38 60 00 01 */	li r3, 1
/* 80D34B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D34B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34B88  7C 08 03 A6 */	mtlr r0
/* 80D34B8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D34B90  4E 80 00 20 */	blr 
