lbl_80D3BDA0:
/* 80D3BDA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BDA4  7C 08 02 A6 */	mflr r0
/* 80D3BDA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BDAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3BDB0  7C 7F 1B 78 */	mr r31, r3
/* 80D3BDB4  4B FF FC 21 */	bl setBaseMtx__13daObjWSword_cFv
/* 80D3BDB8  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 80D3BDBC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D3BDC0  4B 53 34 1D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D3BDC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3BDC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3BDCC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D3BDD0  38 9F 07 C8 */	addi r4, r31, 0x7c8
/* 80D3BDD4  4B 52 8D D5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D3BDD8  38 60 00 01 */	li r3, 1
/* 80D3BDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3BDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BDE4  7C 08 03 A6 */	mtlr r0
/* 80D3BDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BDEC  4E 80 00 20 */	blr 
