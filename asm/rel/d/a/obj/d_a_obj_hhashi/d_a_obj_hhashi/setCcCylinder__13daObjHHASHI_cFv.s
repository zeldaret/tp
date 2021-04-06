lbl_8057FA18:
/* 8057FA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057FA1C  7C 08 02 A6 */	mflr r0
/* 8057FA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057FA24  7C 64 1B 78 */	mr r4, r3
/* 8057FA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057FA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057FA30  38 63 23 3C */	addi r3, r3, 0x233c
/* 8057FA34  38 84 10 5C */	addi r4, r4, 0x105c
/* 8057FA38  4B CE 51 71 */	bl Set__4cCcSFP8cCcD_Obj
/* 8057FA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057FA40  7C 08 03 A6 */	mtlr r0
/* 8057FA44  38 21 00 10 */	addi r1, r1, 0x10
/* 8057FA48  4E 80 00 20 */	blr 
