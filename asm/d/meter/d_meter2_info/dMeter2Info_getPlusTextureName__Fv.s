lbl_8021E2DC:
/* 8021E2DC  88 0D 8B 3C */	lbz r0, data_804510BC(r13)
/* 8021E2E0  7C 00 07 75 */	extsb. r0, r0
/* 8021E2E4  40 82 00 1C */	bne lbl_8021E300
/* 8021E2E8  3C 60 80 3A */	lis r3, d_meter_d_meter2_info__stringBase0@ha /* 0x80399168@ha */
/* 8021E2EC  38 63 91 68 */	addi r3, r3, d_meter_d_meter2_info__stringBase0@l /* 0x80399168@l */
/* 8021E2F0  38 03 01 B4 */	addi r0, r3, 0x1b4
/* 8021E2F4  90 0D 8B 38 */	stw r0, tex_name_5188(r13)
/* 8021E2F8  38 00 00 01 */	li r0, 1
/* 8021E2FC  98 0D 8B 3C */	stb r0, data_804510BC(r13)
lbl_8021E300:
/* 8021E300  80 6D 8B 38 */	lwz r3, tex_name_5188(r13)
/* 8021E304  4E 80 00 20 */	blr 
