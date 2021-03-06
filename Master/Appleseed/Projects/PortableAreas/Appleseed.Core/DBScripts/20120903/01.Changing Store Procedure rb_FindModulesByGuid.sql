
/****** Object:  StoredProcedure .[rb_FindModulesByGuid]    Script Date: 03-09-2012 10:03:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE rb_FindModulesByGuid
(
    @PortalID int,
    @Guid uniqueidentifier
)
AS

    SELECT     rb_Modules.ModuleID
    FROM         rb_Modules 
    INNER JOIN rb_ModuleDefinitions ON rb_Modules.ModuleDefID = rb_ModuleDefinitions.ModuleDefID
	INNER JOIN rb_Pages on rb_Modules.TabID = rb_Pages.PageID
    WHERE     (rb_ModuleDefinitions.PortalID = @PortalID) AND (rb_ModuleDefinitions.GeneralModDefID = @Guid)
	and rb_Pages.PortalID = @PortalID