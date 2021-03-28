lbl_80B9BD30:
/* 80B9BD30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9BD34  7C 08 02 A6 */	mflr r0
/* 80B9BD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9BD3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9BD40  4B 7C 64 9C */	b _savegpr_29
/* 80B9BD44  7C 7D 1B 78 */	mr r29, r3
/* 80B9BD48  7C 9E 23 78 */	mr r30, r4
/* 80B9BD4C  7C BF 2B 78 */	mr r31, r5
/* 80B9BD50  38 7D 09 48 */	addi r3, r29, 0x948
/* 80B9BD54  4B 7C 62 F4 */	b __ptmf_cmpr
/* 80B9BD58  2C 03 00 00 */	cmpwi r3, 0
/* 80B9BD5C  41 82 00 64 */	beq lbl_80B9BDC0
/* 80B9BD60  38 7D 09 48 */	addi r3, r29, 0x948
/* 80B9BD64  4B 7C 62 B4 */	b __ptmf_test
/* 80B9BD68  2C 03 00 00 */	cmpwi r3, 0
/* 80B9BD6C  41 82 00 20 */	beq lbl_80B9BD8C
/* 80B9BD70  38 00 FF FF */	li r0, -1
/* 80B9BD74  B0 1D 09 54 */	sth r0, 0x954(r29)
/* 80B9BD78  7F A3 EB 78 */	mr r3, r29
/* 80B9BD7C  7F E4 FB 78 */	mr r4, r31
/* 80B9BD80  39 9D 09 48 */	addi r12, r29, 0x948
/* 80B9BD84  4B 7C 63 00 */	b __ptmf_scall
/* 80B9BD88  60 00 00 00 */	nop 
lbl_80B9BD8C:
/* 80B9BD8C  38 00 00 00 */	li r0, 0
/* 80B9BD90  B0 1D 09 54 */	sth r0, 0x954(r29)
/* 80B9BD94  80 7E 00 00 */	lwz r3, 0(r30)
/* 80B9BD98  80 1E 00 04 */	lwz r0, 4(r30)
/* 80B9BD9C  90 7D 09 48 */	stw r3, 0x948(r29)
/* 80B9BDA0  90 1D 09 4C */	stw r0, 0x94c(r29)
/* 80B9BDA4  80 1E 00 08 */	lwz r0, 8(r30)
/* 80B9BDA8  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80B9BDAC  7F A3 EB 78 */	mr r3, r29
/* 80B9BDB0  7F E4 FB 78 */	mr r4, r31
/* 80B9BDB4  39 9D 09 48 */	addi r12, r29, 0x948
/* 80B9BDB8  4B 7C 62 CC */	b __ptmf_scall
/* 80B9BDBC  60 00 00 00 */	nop 
lbl_80B9BDC0:
/* 80B9BDC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9BDC4  4B 7C 64 64 */	b _restgpr_29
/* 80B9BDC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BDCC  7C 08 03 A6 */	mtlr r0
/* 80B9BDD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BDD4  4E 80 00 20 */	blr 
