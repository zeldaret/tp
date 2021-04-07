lbl_8009961C:
/* 8009961C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80099620  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80099624  A8 64 5D C8 */	lha r3, 0x5dc8(r4)
/* 80099628  38 03 00 01 */	addi r0, r3, 1
/* 8009962C  B0 04 5D C8 */	sth r0, 0x5dc8(r4)
/* 80099630  4E 80 00 20 */	blr 
